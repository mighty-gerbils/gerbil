(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708247275)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp186602 (list gx#expander::t))
            (__tmp186600
             (let ((__tmp186601
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp186601 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp186602
         '(id depth)
         __tmp186600
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args182530_
        (apply make-instance gx#syntax-pattern::t _$args182530_)))
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
      (lambda (_self182527_ _stx182528_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx182528_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx182009_)
        (letrec ((_generate182011_
                  (lambda (_e182238_)
                    (letrec ((_BUG182240_
                              (lambda (_q182402_)
                                (error '"BUG: syntax; generate"
                                       _stx182009_
                                       _e182238_
                                       _q182402_)))
                             (_local-pattern-e182241_
                              (lambda (_pat182400_)
                                (let ((__tmp186603
                                       (##structure-ref
                                        _pat182400_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp186603))))
                             (_getvar182242_
                              (lambda (_q182397_ _vars182398_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q182397_
                                           _vars182398_
                                           _BUG182240_))))
                             (_getarg182243_
                              (lambda (_arg182363_ _vars182364_)
                                (let* ((_arg182365182372_ _arg182363_)
                                       (_E182367182376_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg182365182372_)))
                                       (_K182368182385_
                                        (lambda (_e182379_ _tag182380_)
                                          (let ((_$e182382_ _tag182380_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e182382_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar182242_
                                                   _e182379_
                                                   _vars182364_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e182382_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e182241_
                                                       _e182379_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG182240_
                                                       _arg182363_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg182365182372_))
                                      (let ((_hd182369182388_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg182365182372_)))
                                            (_tl182370182390_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg182365182372_))))
                                        (let* ((_tag182393_ _hd182369182388_)
                                               (_e182395_ _tl182370182390_))
                                          (declare (not safe))
                                          (_K182368182385_
                                           _e182395_
                                           _tag182393_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E182367182376_)))))))
                      (let _recur182245_ ((_e182247_ _e182238_)
                                          (_vars182248_ '()))
                        (let* ((_e182249182256_ _e182247_)
                               (_E182251182260_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e182249182256_)))
                               (_K182252182351_
                                (lambda (_body182263_ _tag182264_)
                                  (let ((_$e182266_ _tag182264_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e182266_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body182263_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e182266_))
                                            (let ((_id182269_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body182263_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id182269_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks182271_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id182269_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks182271_))
                                                        (let ((__tmp186631
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body182263_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp186631))
                (let ((__tmp186630
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body182263_)))
                      (__tmp186629
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body182263_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp186630
                   __tmp186629
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id182269_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body182263_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG182240_
                                                         _e182247_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e182266_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e182241_
                                                   _body182263_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e182266_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar182242_
                                                       _body182263_
                                                       _vars182248_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e182266_))
                                                        (let ((__tmp186627
                                                               (let ((__tmp186628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body182263_)))
                         (declare (not safe))
                         (_recur182245_ __tmp186628 _vars182248_)))
                      (__tmp186625
                       (let ((__tmp186626 (cdr _body182263_)))
                         (declare (not safe))
                         (_recur182245_ __tmp186626 _vars182248_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp186627 __tmp186625))
                (if (let () (declare (not safe)) (eq? 'vector _$e182266_))
                    (let ((__tmp186624
                           (let ()
                             (declare (not safe))
                             (_recur182245_ _body182263_ _vars182248_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp186624))
                    (if (let () (declare (not safe)) (eq? 'box _$e182266_))
                        (let ((__tmp186623
                               (let ()
                                 (declare (not safe))
                                 (_recur182245_ _body182263_ _vars182248_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp186623))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e182266_))
                            (let* ((_body182272182283_ _body182263_)
                                   (_E182274182287_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body182272182283_)))
                                   (_K182275182325_
                                    (lambda (_args182290_
                                             _iv182291_
                                             _hd182292_
                                             _depth182293_)
                                      (let* ((_targets182299_
                                              (map (lambda (_g182294182296_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg182243_
                                                        _g182294182296_
                                                        _vars182248_)))
                                                   _args182290_))
                                             (_fold-in182301_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args182290_)))
                                             (_fold-out182303_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args182305_
                                              (let ((__tmp186604
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out182303_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp186604
                                                        _fold-in182301_)))
                                             (_lambda-body182322_
                                              (if (fx> _depth182293_ '1)
                                                  (let ((_r-args182313_
                                                         (map (lambda (_arg182307_)
                                                                (let ((__tmp186609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg182307_)))
                          (declare (not safe))
                          (cons 'ref __tmp186609)))
                      _args182290_))
                (_r-vars182314_
                 (let ((__tmp186610
                        (lambda (_arg182309_ _var182310_ _r182311_)
                          (let ((__tmp186611
                                 (let ((__tmp186612 (cdr _arg182309_)))
                                   (declare (not safe))
                                   (cons __tmp186612 _var182310_))))
                            (declare (not safe))
                            (cons __tmp186611 _r182311_)))))
                   (declare (not safe))
                   (foldr2 __tmp186610
                           _vars182248_
                           _args182290_
                           _fold-in182301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp186613
                                                           (let ((__tmp186614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186618
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth182293_ '1)))
                                (__tmp186615
                                 (let ((__tmp186616
                                        (let ((__tmp186617
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out182303_))))
                                          (declare (not safe))
                                          (cons __tmp186617 _r-args182313_))))
                                   (declare (not safe))
                                   (cons _hd182292_ __tmp186616))))
                            (declare (not safe))
                            (cons __tmp186618 __tmp186615))))
                     (declare (not safe))
                     (cons 'splice __tmp186614))))
              (declare (not safe))
              (_recur182245_ __tmp186613 _r-vars182314_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars182320_
                                                          (let ((__tmp186605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg182316_ _var182317_ _r182318_)
                           (let ((__tmp186606
                                  (let ((__tmp186607 (cdr _arg182316_)))
                                    (declare (not safe))
                                    (cons __tmp186607 _var182317_))))
                             (declare (not safe))
                             (cons __tmp186606 _r182318_)))))
                    (declare (not safe))
                    (foldr2 __tmp186605
                            _vars182248_
                            _args182290_
                            _fold-in182301_)))
                 (__tmp186608
                  (let ()
                    (declare (not safe))
                    (_recur182245_ _hd182292_ _hd-vars182320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp186608
                                                     _fold-out182303_)))))
                                        (let ((__tmp186622
                                               (if (fx> (length _targets182299_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets182299_))
                                                   '#!void))
                                              (__tmp186619
                                               (let ((__tmp186621
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args182305_
                                                         _lambda-body182322_)))
                                                     (__tmp186620
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur182245_
                                                         _iv182291_
                                                         _vars182248_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp186621
                                                  __tmp186620
                                                  _targets182299_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp186622
                                           __tmp186619))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body182272182283_))
                                  (let ((_hd182276182328_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body182272182283_)))
                                        (_tl182277182330_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body182272182283_))))
                                    (let ((_depth182333_ _hd182276182328_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl182277182330_))
                                          (let ((_hd182278182335_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl182277182330_)))
                                                (_tl182279182337_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl182277182330_))))
                                            (let ((_hd182340_
                                                   _hd182278182335_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl182279182337_))
                                                  (let ((_hd182280182342_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl182279182337_)))
                                                        (_tl182281182344_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl182279182337_))))
                                                    (let* ((_iv182347_
                                                            _hd182280182342_)
                                                           (_args182349_
                                                            _tl182281182344_))
                                                      (declare (not safe))
                                                      (_K182275182325_
                                                       _args182349_
                                                       _iv182347_
                                                       _hd182340_
                                                       _depth182333_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E182274182287_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E182274182287_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E182274182287_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e182266_))
                                _body182263_
                                (let ()
                                  (declare (not safe))
                                  (_BUG182240_ _e182247_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e182249182256_))
                              (let ((_hd182253182354_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e182249182256_)))
                                    (_tl182254182356_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e182249182256_))))
                                (let* ((_tag182359_ _hd182253182354_)
                                       (_body182361_ _tl182254182356_))
                                  (declare (not safe))
                                  (_K182252182351_ _body182361_ _tag182359_)))
                              (let ()
                                (declare (not safe))
                                (_E182251182260_))))))))
                 (_parse182012_
                  (lambda (_e182053_)
                    (letrec ((_make-cons182055_
                              (lambda (_hd182230_ _tl182231_)
                                (let ((_g186632_ _hd182230_)
                                      (_g186634_ _tl182231_))
                                  (begin
                                    (let ((_g186633_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186632_)
                                                 (##vector-length _g186632_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186633_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186633_)))
                                    (let ((_g186635_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186634_)
                                                 (##vector-length _g186634_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186635_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186635_)))
                                    (let ((_hd-e182233_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186632_ 0)))
                                          (_hd-vars182234_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186632_ 1))))
                                      (let ((_tl-e182235_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186634_ 0)))
                                            (_tl-vars182236_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186634_ 1))))
                                        (values (let ((__tmp186636
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e182233_
                                                               _tl-e182235_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp186636))
                                                (append _hd-vars182234_
                                                        _tl-vars182236_))))))))
                             (_make-splice182056_
                              (lambda (_where182169_
                                       _depth182170_
                                       _hd182171_
                                       _tl182172_)
                                (let ((_g186637_ _hd182171_)
                                      (_g186639_ _tl182172_))
                                  (begin
                                    (let ((_g186638_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186637_)
                                                 (##vector-length _g186637_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186638_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186638_)))
                                    (let ((_g186640_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186639_)
                                                 (##vector-length _g186639_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186640_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186640_)))
                                    (let ((_hd-e182174_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186637_ 0)))
                                          (_hd-vars182175_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186637_ 1))))
                                      (let ((_tl-e182176_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186639_ 0)))
                                            (_tl-vars182177_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186639_ 1))))
                                        (let _lp182179_ ((_rest182181_
                                                          _hd-vars182175_)
                                                         (_targets182182_ '())
                                                         (_vars182183_
                                                          _tl-vars182177_))
                                          (let* ((_rest182184182194_
                                                  _rest182181_)
                                                 (_else182186182202_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets182182_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx182009_
                                                           _where182169_))
                                                        (values (let ((__tmp186641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp186642
                                      (let ((__tmp186643
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e182176_
                                                     _targets182182_))))
                                        (declare (not safe))
                                        (cons _hd-e182174_ __tmp186643))))
                                 (declare (not safe))
                                 (cons _depth182170_ __tmp186642))))
                          (declare (not safe))
                          (cons 'splice __tmp186641))
                        _vars182183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K182188182211_
                                                  (lambda (_rest182205_
                                                           _hd-pat182206_
                                                           _hd-depth*182207_)
                                                    (let ((_hd-depth182209_
                                                           (fx- _hd-depth*182207_
                                                                _depth182170_)))
                                                      (if (fxpositive?
                                                           _hd-depth182209_)
                                                          (let ((__tmp186648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp186649
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat182206_))))
                           (declare (not safe))
                           (cons __tmp186649 _targets182182_)))
                        (__tmp186646
                         (let ((__tmp186647
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth182209_ _hd-pat182206_))))
                           (declare (not safe))
                           (cons __tmp186647 _vars182183_))))
                    (declare (not safe))
                    (_lp182179_ _rest182205_ __tmp186648 __tmp186646))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth182209_))
                      (let ((__tmp186644
                             (let ((__tmp186645
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat182206_))))
                               (declare (not safe))
                               (cons __tmp186645 _targets182182_))))
                        (declare (not safe))
                        (_lp182179_ _rest182205_ __tmp186644 _vars182183_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx182009_
                         _where182169_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest182184182194_))
                                                (let ((_hd182189182214_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest182184182194_)))
                                                      (_tl182190182216_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest182184182194_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd182189182214_))
                                                      (let ((_hd182191182219_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd182189182214_)))
                    (_tl182192182221_
                     (let () (declare (not safe)) (##cdr _hd182189182214_))))
                (let* ((_hd-depth*182224_ _hd182191182219_)
                       (_hd-pat182226_ _tl182192182221_)
                       (_rest182228_ _tl182190182216_))
                  (declare (not safe))
                  (_K182188182211_
                   _rest182228_
                   _hd-pat182226_
                   _hd-depth*182224_)))
              (let () (declare (not safe)) (_else182186182202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else182186182202_)))))))))))
                             (_recur182057_
                              (lambda (_e182062_ _is-e?182063_)
                                (if (_is-e?182063_ _e182062_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx182009_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e182062_))
                                        (let* ((_pat182065_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e182062_)))
                                               (_depth182067_
                                                (##structure-ref
                                                 _pat182065_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth182067_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat182065_))
                                                      (let ((__tmp186665
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth182067_ _pat182065_))))
                (declare (not safe))
                (cons __tmp186665 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat182065_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e182062_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e182062_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e182062_))
                                                (let* ((_e182069182076_
                                                        _e182062_)
                                                       (_E182071182080_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e182069182076_))))
                                                       (_E182070182159_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e182069182076_))
                      (let ((_e182072182084_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e182069182076_))))
                        (let ((_hd182073182087_
                               (let ()
                                 (declare (not safe))
                                 (##car _e182072182084_)))
                              (_tl182074182089_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e182072182084_))))
                          (let* ((_hd182092_ _hd182073182087_)
                                 (_rest182094_ _tl182074182089_))
                            (if '#t
                                (if (_is-e?182063_ _hd182092_)
                                    (let* ((_e182095182102_ _rest182094_)
                                           (_E182097182106_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx182009_
                                                 _e182062_))))
                                           (_E182096182120_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e182095182102_))
                                                  (let ((_e182098182110_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e182095182102_))))
                                                    (let ((_hd182099182113_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e182098182110_)))
                                                          (_tl182100182115_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e182098182110_))))
                                                      (let ((_rest182118_
                                                             _hd182099182113_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl182100182115_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur182057_ _rest182118_ false))
                        (let () (declare (not safe)) (_E182097182106_)))
                    (let () (declare (not safe)) (_E182097182106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E182097182106_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E182096182120_)))
                                    (let _lp182124_ ((_rest182126_
                                                      _rest182094_)
                                                     (_depth182127_ '0))
                                      (let* ((_e182128182135_ _rest182126_)
                                             (_E182130182139_
                                              (lambda ()
                                                (if (fxpositive? _depth182127_)
                                                    (let ((__tmp186659
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur182057_
                                                              _hd182092_
                                                              _is-e?182063_)))
                                                          (__tmp186658
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur182057_
                                                              _rest182126_
                                                              _is-e?182063_))))
                                                      (declare (not safe))
                                                      (_make-splice182056_
                                                       _e182062_
                                                       _depth182127_
                                                       __tmp186659
                                                       __tmp186658))
                                                    (let ((__tmp186657
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur182057_
                                                              _hd182092_
                                                              _is-e?182063_)))
                                                          (__tmp186656
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur182057_
                                                              _rest182126_
                                                              _is-e?182063_))))
                                                      (declare (not safe))
                                                      (_make-cons182055_
                                                       __tmp186657
                                                       __tmp186656)))))
                                             (_E182129182155_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e182128182135_))
                                                    (let ((_e182131182143_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e182128182135_))))
                                                      (let ((_hd182132182146_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e182131182143_)))
                    (_tl182133182148_
                     (let () (declare (not safe)) (##cdr _e182131182143_))))
                (let* ((_rest-hd182151_ _hd182132182146_)
                       (_rest-tl182153_ _tl182133182148_))
                  (if '#t
                      (if (_is-e?182063_ _rest-hd182151_)
                          (let ((__tmp186664
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth182127_ '1))))
                            (declare (not safe))
                            (_lp182124_ _rest-tl182153_ __tmp186664))
                          (if (fxpositive? _depth182127_)
                              (let ((__tmp186663
                                     (let ()
                                       (declare (not safe))
                                       (_recur182057_
                                        _hd182092_
                                        _is-e?182063_)))
                                    (__tmp186662
                                     (let ()
                                       (declare (not safe))
                                       (_recur182057_
                                        _rest182126_
                                        _is-e?182063_))))
                                (declare (not safe))
                                (_make-splice182056_
                                 _e182062_
                                 _depth182127_
                                 __tmp186663
                                 __tmp186662))
                              (let ((__tmp186661
                                     (let ()
                                       (declare (not safe))
                                       (_recur182057_
                                        _hd182092_
                                        _is-e?182063_)))
                                    (__tmp186660
                                     (let ()
                                       (declare (not safe))
                                       (_recur182057_
                                        _rest182126_
                                        _is-e?182063_))))
                                (declare (not safe))
                                (_make-cons182055_ __tmp186661 __tmp186660))))
                      (let () (declare (not safe)) (_E182130182139_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E182130182139_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E182129182155_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E182071182080_))))))
                      (let () (declare (not safe)) (_E182071182080_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E182070182159_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e182062_))
                                                    (let ((_g186653_
                                                           (let ((__tmp186655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e182062_)))))
                     (declare (not safe))
                     (_recur182057_ __tmp186655 _is-e?182063_))))
              (begin
                (let ((_g186654_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g186653_)
                             (##vector-length _g186653_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g186654_ 2)))
                      (error "Context expects 2 values" _g186654_)))
                (let ((_e182163_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g186653_ 0)))
                      (_vars182164_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g186653_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e182163_))
                          _vars182164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e182062_))
                                                        (let ((_g186650_
                                                               (let ((__tmp186652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e182062_)))))
                         (declare (not safe))
                         (_recur182057_ __tmp186652 _is-e?182063_))))
                  (begin
                    (let ((_g186651_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g186650_)
                                 (##vector-length _g186650_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g186651_ 2)))
                          (error "Context expects 2 values" _g186651_)))
                    (let ((_e182166_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g186650_ 0)))
                          (_vars182167_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g186650_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e182166_))
                              _vars182167_))))
                (values (let () (declare (not safe)) (cons 'datum _e182062_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g186666_
                             (let ()
                               (declare (not safe))
                               (_recur182057_ _e182053_ gx#ellipsis?))))
                        (begin
                          (let ((_g186667_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g186666_)
                                       (##vector-length _g186666_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g186667_ 2)))
                                (error "Context expects 2 values" _g186667_)))
                          (let ((_tree182059_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g186666_ 0)))
                                (_vars182060_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g186666_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars182060_))
                                _tree182059_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx182009_
                                   _vars182060_))))))))))
          (let* ((_e182013182023_ _stx182009_)
                 (_E182015182027_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx182009_))))
                 (_E182014182049_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e182013182023_))
                        (let ((_e182016182031_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e182013182023_))))
                          (let ((_hd182017182034_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e182016182031_)))
                                (_tl182018182036_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e182016182031_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl182018182036_))
                                (let ((_e182019182039_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl182018182036_))))
                                  (let ((_hd182020182042_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e182019182039_)))
                                        (_tl182021182044_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e182019182039_))))
                                    (let ((_form182047_ _hd182020182042_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl182021182044_))
                                          (if '#t
                                              (let ((__tmp186669
                                                     (let ((__tmp186670
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse182012_
                                                               _form182047_))))
                                                       (declare (not safe))
                                                       (_generate182011_
                                                        __tmp186670)))
                                                    (__tmp186668
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx182009_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp186669
                                                 __tmp186668))
                                              (let ()
                                                (declare (not safe))
                                                (_E182015182027_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E182015182027_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E182015182027_)))))
                        (let () (declare (not safe)) (_E182015182027_))))))
            (let () (declare (not safe)) (_E182014182049_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx181273_
               _identifier=?181274_
               _unwrap-e181275_
               _wrap-e181276_)
        (letrec ((_generate-bindings181278_
                  (lambda (_target181873_
                           _ids181874_
                           _clauses181875_
                           _clause-ids181876_
                           _E181877_)
                    (letrec ((_generate1181879_
                              (lambda (_clause181976_
                                       _clause-id181977_
                                       _E181978_)
                                (let ((__tmp186675
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id181977_ '())))
                                      (__tmp186671
                                       (let ((__tmp186672
                                              (let ((__tmp186674
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target181873_
                                                             '())))
                                                    (__tmp186673
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause181280_
                                                        _target181873_
                                                        _ids181874_
                                                        _clause181976_
                                                        _E181978_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp186674
                                                 __tmp186673))))
                                         (declare (not safe))
                                         (cons __tmp186672 '()))))
                                  (declare (not safe))
                                  (cons __tmp186675 __tmp186671)))))
                      (let _lp181881_ ((_rest181883_ _clauses181875_)
                                       (_rest-ids181884_ _clause-ids181876_)
                                       (_bindings181885_ '()))
                        (let* ((_rest181886181894_ _rest181883_)
                               (_else181888181902_
                                (lambda () _bindings181885_))
                               (_K181890181964_
                                (lambda (_rest181905_ _clause181906_)
                                  (let* ((_rest-ids181907181914_
                                          _rest-ids181884_)
                                         (_E181909181918_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids181907181914_)))
                                         (_K181910181952_
                                          (lambda (_rest-ids181921_
                                                   _clause-id181922_)
                                            (let* ((_rest-ids181923181931_
                                                    _rest-ids181921_)
                                                   (_else181925181939_
                                                    (lambda ()
                                                      (let ((__tmp186676
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1181879_
                        _clause181906_
                        _clause-id181922_
                        _E181877_))))
                (declare (not safe))
                (cons __tmp186676 _bindings181885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K181927181944_
                                                    (lambda (_next-clause-id181942_)
                                                      (let ((__tmp186677
                                                             (let ((__tmp186678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1181879_
                               _clause181906_
                               _clause-id181922_
                               _next-clause-id181942_))))
                       (declare (not safe))
                       (cons __tmp186678 _bindings181885_))))
                (declare (not safe))
                (_lp181881_ _rest181905_ _rest-ids181921_ __tmp186677)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids181923181931_))
                                                  (let* ((_hd181928181947_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids181923181931_)))
                                                         (_next-clause-id181950_
                                                          _hd181928181947_))
                                                    (declare (not safe))
                                                    (_K181927181944_
                                                     _next-clause-id181950_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else181925181939_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids181907181914_))
                                        (let ((_hd181911181955_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids181907181914_)))
                                              (_tl181912181957_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids181907181914_))))
                                          (let* ((_clause-id181960_
                                                  _hd181911181955_)
                                                 (_rest-ids181962_
                                                  _tl181912181957_))
                                            (declare (not safe))
                                            (_K181910181952_
                                             _rest-ids181962_
                                             _clause-id181960_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E181909181918_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest181886181894_))
                              (let ((_hd181891181967_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest181886181894_)))
                                    (_tl181892181969_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest181886181894_))))
                                (let* ((_clause181972_ _hd181891181967_)
                                       (_rest181974_ _tl181892181969_))
                                  (declare (not safe))
                                  (_K181890181964_
                                   _rest181974_
                                   _clause181972_)))
                              (let ()
                                (declare (not safe))
                                (_else181888181902_))))))))
                 (_generate-body181279_
                  (lambda (_bindings181833_ _body181834_)
                    (let _recur181836_ ((_rest181838_ _bindings181833_))
                      (let* ((_rest181839181847_ _rest181838_)
                             (_else181841181855_ (lambda () _body181834_))
                             (_K181843181861_
                              (lambda (_rest181858_ _hd181859_)
                                (let ((__tmp186680
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd181859_ '())))
                                      (__tmp186679
                                       (let ()
                                         (declare (not safe))
                                         (_recur181836_ _rest181858_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp186680
                                   __tmp186679)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest181839181847_))
                            (let ((_hd181844181864_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest181839181847_)))
                                  (_tl181845181866_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest181839181847_))))
                              (let* ((_hd181869_ _hd181844181864_)
                                     (_rest181871_ _tl181845181866_))
                                (declare (not safe))
                                (_K181843181861_ _rest181871_ _hd181869_)))
                            (let ()
                              (declare (not safe))
                              (_else181841181855_)))))))
                 (_generate-clause181280_
                  (lambda (_target181696_ _ids181697_ _clause181698_ _E181699_)
                    (letrec ((_generate1181701_
                              (lambda (_hd181788_ _fender181789_ _body181790_)
                                (let ((_g186681_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause181282_
                                          _hd181788_
                                          _ids181697_))))
                                  (begin
                                    (let ((_g186682_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186681_)
                                                 (##vector-length _g186681_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186682_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186682_)))
                                    (let ((_e181792_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186681_ 0)))
                                          (_mvars181793_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186681_ 1))))
                                      (let* ((_pvars181795_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars181793_))))
                                             (_E181797_
                                              (let ((__tmp186683
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target181696_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E181699_ __tmp186683)))
                                             (_K181830_
                                              (let ((__tmp186684
                                                     (let ((__tmp186686
                                                            (map (lambda (_mvar181799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar181800_)
                           (let* ((_mvar181801181808_ _mvar181799_)
                                  (_E181803181812_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar181801181808_)))
                                  (_K181804181818_
                                   (lambda (_depth181815_ _id181816_)
                                     (let ((__tmp186687
                                            (let ((__tmp186688
                                                   (let ((__tmp186690
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id181816_)))
                                                         (__tmp186689
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar181800_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp186690
                                                      __tmp186689
                                                      _depth181815_))))
                                              (declare (not safe))
                                              (cons __tmp186688 '()))))
                                       (declare (not safe))
                                       (cons _id181816_ __tmp186687)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar181801181808_))
                                 (let ((_hd181805181821_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar181801181808_)))
                                       (_tl181806181823_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar181801181808_))))
                                   (let* ((_id181826_ _hd181805181821_)
                                          (_depth181828_ _tl181806181823_))
                                     (declare (not safe))
                                     (_K181804181818_
                                      _depth181828_
                                      _id181826_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E181803181812_)))))
                         _mvars181793_
                         _pvars181795_))
                   (__tmp186685
                    (if (let () (declare (not safe)) (eq? _fender181789_ '#t))
                        _body181790_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender181789_
                           _body181790_
                           _E181797_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp186686 __tmp186685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars181795_
                                                 __tmp186684))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match181281_
                                           _hd181788_
                                           _target181696_
                                           _e181792_
                                           _mvars181793_
                                           _K181830_
                                           _E181797_)))))))))
                      (let* ((_e181702181722_ _clause181698_)
                             (_E181711181726_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e181702181722_))))
                             (_E181704181760_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e181702181722_))
                                    (let ((_e181712181730_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e181702181722_))))
                                      (let ((_hd181713181733_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e181712181730_)))
                                            (_tl181714181735_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e181712181730_))))
                                        (let ((_hd181738_ _hd181713181733_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl181714181735_))
                                              (let ((_e181715181740_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl181714181735_))))
                                                (let ((_hd181716181743_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e181715181740_)))
                                                      (_tl181717181745_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e181715181740_))))
                                                  (let ((_fender181748_
                                                         _hd181716181743_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl181717181745_))
                                                        (let ((_e181718181750_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl181717181745_))))
                  (let ((_hd181719181753_
                         (let () (declare (not safe)) (##car _e181718181750_)))
                        (_tl181720181755_
                         (let ()
                           (declare (not safe))
                           (##cdr _e181718181750_))))
                    (let ((_body181758_ _hd181719181753_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl181720181755_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1181701_
                                 _hd181738_
                                 _fender181748_
                                 _body181758_))
                              (let () (declare (not safe)) (_E181711181726_)))
                          (let () (declare (not safe)) (_E181711181726_))))))
                (let () (declare (not safe)) (_E181711181726_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E181711181726_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E181711181726_)))))
                             (_E181703181784_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e181702181722_))
                                    (let ((_e181705181764_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e181702181722_))))
                                      (let ((_hd181706181767_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e181705181764_)))
                                            (_tl181707181769_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e181705181764_))))
                                        (let ((_hd181772_ _hd181706181767_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl181707181769_))
                                              (let ((_e181708181774_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl181707181769_))))
                                                (let ((_hd181709181777_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e181708181774_)))
                                                      (_tl181710181779_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e181708181774_))))
                                                  (let ((_body181782_
                                                         _hd181709181777_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl181710181779_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1181701_
                                                               _hd181772_
                                                               '#t
                                                               _body181782_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E181704181760_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E181704181760_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E181704181760_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E181704181760_))))))
                        (let () (declare (not safe)) (_E181703181784_))))))
                 (_generate-match181281_
                  (lambda (_where181445_
                           _target181446_
                           _hd181447_
                           _mvars181448_
                           _K181449_
                           _E181450_)
                    (letrec ((_BUG181452_
                              (lambda (_q181694_)
                                (error '"BUG: syntax-case; generate"
                                       _stx181273_
                                       _hd181447_
                                       _q181694_)))
                             (_recur181453_
                              (lambda (_e181544_
                                       _vars181545_
                                       _target181546_
                                       _E181547_
                                       _k181548_)
                                (let* ((_e181549181556_ _e181544_)
                                       (_E181551181560_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e181549181556_)))
                                       (_K181552181682_
                                        (lambda (_body181563_ _tag181564_)
                                          (let ((_$e181566_ _tag181564_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e181566_))
                                                (_k181548_ _vars181545_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e181566_))
                                                    (let ((__tmp186797
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target181546_)))
                                                          (__tmp186793
                                                           (let ((__tmp186795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186796
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e181276_
                                    _body181563_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?181274_
                             __tmp186796
                             _target181546_)))
                         (__tmp186794 (_k181548_ _vars181545_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp186795 __tmp186794 _E181547_))))
              (declare (not safe))
              (gx#core-list 'if __tmp186797 __tmp186793 _E181547_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e181566_))
                                                        (_k181548_
                                                         (let ((__tmp186792
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body181563_ _target181546_))))
                   (declare (not safe))
                   (cons __tmp186792 _vars181545_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e181566_))
                    (let ((_$e181569_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd181570_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl181571_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp186791
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target181546_)))
                            (__tmp186772
                             (let ((__tmp186786
                                    (let ((__tmp186787
                                           (let ((__tmp186790
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e181569_ '())))
                                                 (__tmp186788
                                                  (let ((__tmp186789
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e181275_
                                                            _target181546_))))
                                                    (declare (not safe))
                                                    (cons __tmp186789 '()))))
                                             (declare (not safe))
                                             (cons __tmp186790 __tmp186788))))
                                      (declare (not safe))
                                      (cons __tmp186787 '())))
                                   (__tmp186773
                                    (let ((__tmp186776
                                           (let ((__tmp186782
                                                  (let ((__tmp186785
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd181570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp186783
                 (let ((__tmp186784
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e181569_))))
                   (declare (not safe))
                   (cons __tmp186784 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186785
                                                          __tmp186783)))
                                                 (__tmp186777
                                                  (let ((__tmp186778
                                                         (let ((__tmp186781
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl181571_ '())))
                       (__tmp186779
                        (let ((__tmp186780
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e181569_))))
                          (declare (not safe))
                          (cons __tmp186780 '()))))
                   (declare (not safe))
                   (cons __tmp186781 __tmp186779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186778 '()))))
                                             (declare (not safe))
                                             (cons __tmp186782 __tmp186777)))
                                          (__tmp186774
                                           (let* ((_body181572181579_
                                                   _body181563_)
                                                  (_E181574181583_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body181572181579_)))
                                                  (_K181575181591_
                                                   (lambda (_tl181586_
                                                            _hd181587_)
                                                     (let ((__tmp186775
                                                            (lambda (_vars181589_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur181453_
                         _tl181586_
                         _vars181589_
                         _$tl181571_
                         _E181547_
                         _k181548_)))))
               (declare (not safe))
               (_recur181453_
                _hd181587_
                _vars181545_
                _$hd181570_
                _E181547_
                __tmp186775)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body181572181579_))
                                                 (let ((_hd181576181594_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body181572181579_)))
                                                       (_tl181577181596_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body181572181579_))))
                                                   (let* ((_hd181599_
                                                           _hd181576181594_)
                                                          (_tl181601_
                                                           _tl181577181596_))
                                                     (declare (not safe))
                                                     (_K181575181591_
                                                      _tl181601_
                                                      _hd181599_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E181574181583_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp186776
                                       __tmp186774))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp186786
                                __tmp186773))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp186791 __tmp186772 _E181547_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e181566_))
                        (let* ((_body181602181609_ _body181563_)
                               (_E181604181613_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body181602181609_)))
                               (_K181605181664_
                                (lambda (_tl181616_ _hd181617_)
                                  (let* ((_rlen181619_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen181454_ _tl181616_)))
                                         (_$target181621_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd181623_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl181625_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp181627_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e181629_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd181631_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl181633_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars181635_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars181455_ _hd181617_)))
                                         (_lvars181637_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars181635_)))
                                         (_tlvars181639_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars181635_)))
                                         (_linit181643_
                                          (map (lambda (_var181641_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars181637_)))
                                    (letrec ((_make-loop181646_
                                              (lambda (_vars181650_)
                                                (let ((__tmp186723
                                                       (let ((__tmp186724
                                                              (let ((__tmp186760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp181627_ '())))
                            (__tmp186725
                             (let ((__tmp186726
                                    (let ((__tmp186759
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd181623_ _lvars181637_)))
                                          (__tmp186727
                                           (let ((__tmp186758
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd181623_)))
                                                 (__tmp186736
                                                  (let ((__tmp186753
                                                         (let ((__tmp186754
                                                                (let ((__tmp186757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e181629_ '())))
                              (__tmp186755
                               (let ((__tmp186756
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e181275_
                                         _$hd181623_))))
                                 (declare (not safe))
                                 (cons __tmp186756 '()))))
                          (declare (not safe))
                          (cons __tmp186757 __tmp186755))))
                   (declare (not safe))
                   (cons __tmp186754 '())))
                (__tmp186737
                 (let ((__tmp186743
                        (let ((__tmp186749
                               (let ((__tmp186752
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd181631_ '())))
                                     (__tmp186750
                                      (let ((__tmp186751
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e181629_))))
                                        (declare (not safe))
                                        (cons __tmp186751 '()))))
                                 (declare (not safe))
                                 (cons __tmp186752 __tmp186750)))
                              (__tmp186744
                               (let ((__tmp186745
                                      (let ((__tmp186748
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl181633_ '())))
                                            (__tmp186746
                                             (let ((__tmp186747
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e181629_))))
                                               (declare (not safe))
                                               (cons __tmp186747 '()))))
                                        (declare (not safe))
                                        (cons __tmp186748 __tmp186746))))
                                 (declare (not safe))
                                 (cons __tmp186745 '()))))
                          (declare (not safe))
                          (cons __tmp186749 __tmp186744)))
                       (__tmp186738
                        (let ((__tmp186739
                               (lambda (_hdvars181652_)
                                 (let ((__tmp186740
                                        (let ((__tmp186741
                                               (map (lambda (_svar181654_
                                                             _lvar181655_)
                                                      (let ((__tmp186742
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar181654_ _hdvars181652_ _BUG181452_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp186742 _lvar181655_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars181635_
                                                    _lvars181637_)))
                                          (declare (not safe))
                                          (cons _$lp-tl181633_ __tmp186741))))
                                   (declare (not safe))
                                   (cons _$lp181627_ __tmp186740)))))
                          (declare (not safe))
                          (_recur181453_
                           _hd181617_
                           '()
                           _$lp-hd181631_
                           _E181547_
                           __tmp186739))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp186743 __tmp186738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp186753
                                                     __tmp186737)))
                                                 (__tmp186728
                                                  (let ((__tmp186732
                                                         (map (lambda (_lvar181657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar181658_)
                        (let ((__tmp186735
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar181658_ '())))
                              (__tmp186733
                               (let ((__tmp186734
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar181657_))))
                                 (declare (not safe))
                                 (cons __tmp186734 '()))))
                          (declare (not safe))
                          (cons __tmp186735 __tmp186733)))
                      _lvars181637_
                      _tlvars181639_))
                (__tmp186729
                 (_k181548_
                  (let ((__tmp186730
                         (lambda (_svar181660_ _tlvar181661_ _r181662_)
                           (let ((__tmp186731
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar181660_ _tlvar181661_))))
                             (declare (not safe))
                             (cons __tmp186731 _r181662_)))))
                    (declare (not safe))
                    (foldl2 __tmp186730
                            _vars181650_
                            _svars181635_
                            _tlvars181639_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp186732
                                                     __tmp186729))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp186758
                                              __tmp186736
                                              __tmp186728))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp186759
                                       __tmp186727))))
                               (declare (not safe))
                               (cons __tmp186726 '()))))
                        (declare (not safe))
                        (cons __tmp186760 __tmp186725))))
                 (declare (not safe))
                 (cons __tmp186724 '())))
              (__tmp186721
               (let ((__tmp186722
                      (let ()
                        (declare (not safe))
                        (cons _$target181621_ _linit181643_))))
                 (declare (not safe))
                 (cons _$lp181627_ __tmp186722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp186723
                                                   __tmp186721)))))
                                      (let ((_body181648_
                                             (let ((__tmp186762
                                                    (let ((__tmp186763
                                                           (let ((__tmp186766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186767
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl181625_ '()))))
                            (declare (not safe))
                            (cons _$target181621_ __tmp186767)))
                         (__tmp186764
                          (let ((__tmp186765
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target181546_
                                    _rlen181619_))))
                            (declare (not safe))
                            (cons __tmp186765 '()))))
                     (declare (not safe))
                     (cons __tmp186766 __tmp186764))))
              (declare (not safe))
              (cons __tmp186763 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186761
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur181453_
                                                       _tl181616_
                                                       _vars181545_
                                                       _$tl181625_
                                                       _E181547_
                                                       _make-loop181646_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186762
                                                __tmp186761))))
                                        (let ((__tmp186771
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target181546_)))
                                              (__tmp186768
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen181619_))
                                                   _body181648_
                                                   (let ((__tmp186769
                                                          (let ((__tmp186770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target181546_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp186770 _rlen181619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp186769
                                                      _body181648_
                                                      _E181547_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp186771
                                           __tmp186768
                                           _E181547_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body181602181609_))
                              (let ((_hd181606181667_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body181602181609_)))
                                    (_tl181607181669_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body181602181609_))))
                                (let* ((_hd181672_ _hd181606181667_)
                                       (_tl181674_ _tl181607181669_))
                                  (declare (not safe))
                                  (_K181605181664_ _tl181674_ _hd181672_)))
                              (let () (declare (not safe)) (_E181604181613_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e181566_))
                            (let ((__tmp186720
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target181546_)))
                                  (__tmp186719 (_k181548_ _vars181545_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp186720
                               __tmp186719
                               _E181547_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e181566_))
                                (let ((_$e181676_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp186718
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target181546_)))
                                        (__tmp186710
                                         (let ((__tmp186712
                                                (let ((__tmp186713
                                                       (let ((__tmp186717
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e181676_ '())))
                     (__tmp186714
                      (let ((__tmp186715
                             (let ((__tmp186716
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e181275_
                                       _target181546_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp186716))))
                        (declare (not safe))
                        (cons __tmp186715 '()))))
                 (declare (not safe))
                 (cons __tmp186717 __tmp186714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp186713 '())))
                                               (__tmp186711
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur181453_
                                                   _body181563_
                                                   _vars181545_
                                                   _$e181676_
                                                   _E181547_
                                                   _k181548_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp186712
                                            __tmp186711))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp186718
                                     __tmp186710
                                     _E181547_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e181566_))
                                    (let ((_$e181678_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp186709
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target181546_)))
                                            (__tmp186701
                                             (let ((__tmp186703
                                                    (let ((__tmp186704
                                                           (let ((__tmp186708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e181678_ '())))
                         (__tmp186705
                          (let ((__tmp186706
                                 (let ((__tmp186707
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e181275_
                                           _target181546_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp186707))))
                            (declare (not safe))
                            (cons __tmp186706 '()))))
                     (declare (not safe))
                     (cons __tmp186708 __tmp186705))))
              (declare (not safe))
              (cons __tmp186704 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186702
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur181453_
                                                       _body181563_
                                                       _vars181545_
                                                       _$e181678_
                                                       _E181547_
                                                       _k181548_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186703
                                                __tmp186702))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp186709
                                         __tmp186701
                                         _E181547_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e181566_))
                                        (let ((_$e181680_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp186700
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target181546_)))
                                                (__tmp186691
                                                 (let ((__tmp186695
                                                        (let ((__tmp186696
                                                               (let ((__tmp186699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e181680_ '())))
                             (__tmp186697
                              (let ((__tmp186698
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target181546_))))
                                (declare (not safe))
                                (cons __tmp186698 '()))))
                         (declare (not safe))
                         (cons __tmp186699 __tmp186697))))
                  (declare (not safe))
                  (cons __tmp186696 '())))
               (__tmp186692
                (let ((__tmp186694
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e181680_ _body181563_)))
                      (__tmp186693 (_k181548_ _vars181545_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp186694 __tmp186693 _E181547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp186695
                                                    __tmp186692))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp186700
                                             __tmp186691
                                             _E181547_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG181452_ _e181544_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e181549181556_))
                                      (let ((_hd181553181685_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e181549181556_)))
                                            (_tl181554181687_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e181549181556_))))
                                        (let* ((_tag181690_ _hd181553181685_)
                                               (_body181692_ _tl181554181687_))
                                          (declare (not safe))
                                          (_K181552181682_
                                           _body181692_
                                           _tag181690_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E181551181560_))))))
                             (_splice-rlen181454_
                              (lambda (_e181506_)
                                (let _lp181508_ ((_e181510_ _e181506_)
                                                 (_n181511_ '0))
                                  (let* ((_e181512181519_ _e181510_)
                                         (_E181514181523_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e181512181519_)))
                                         (_K181515181532_
                                          (lambda (_body181526_ _tag181527_)
                                            (let ((_$e181529_ _tag181527_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e181529_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx181273_
                                                     _where181445_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e181529_))
                                                      (let ((__tmp186799
                                                             (cdr _body181526_))
                                                            (__tmp186798
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n181511_ '1))))
                (declare (not safe))
                (_lp181508_ __tmp186799 __tmp186798))
              _n181511_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e181512181519_))
                                        (let ((_hd181516181535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e181512181519_)))
                                              (_tl181517181537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e181512181519_))))
                                          (let* ((_tag181540_ _hd181516181535_)
                                                 (_body181542_
                                                  _tl181517181537_))
                                            (declare (not safe))
                                            (_K181515181532_
                                             _body181542_
                                             _tag181540_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E181514181523_)))))))
                             (_splice-vars181455_
                              (lambda (_e181462_)
                                (let _recur181464_ ((_e181466_ _e181462_)
                                                    (_vars181467_ '()))
                                  (let* ((_e181468181475_ _e181466_)
                                         (_E181470181479_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e181468181475_)))
                                         (_K181471181494_
                                          (lambda (_body181482_ _tag181483_)
                                            (let ((_$e181485_ _tag181483_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e181485_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body181482_
                                                          _vars181467_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e181485_))
                  (let () (declare (not safe)) (eq? 'splice _$e181485_)))
              (let ((__tmp186802 (cdr _body181482_))
                    (__tmp186800
                     (let ((__tmp186801 (car _body181482_)))
                       (declare (not safe))
                       (_recur181464_ __tmp186801 _vars181467_))))
                (declare (not safe))
                (_recur181464_ __tmp186802 __tmp186800))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e181485_))
                      (let () (declare (not safe)) (eq? 'box _$e181485_)))
                  (let ()
                    (declare (not safe))
                    (_recur181464_ _body181482_ _vars181467_))
                  _vars181467_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e181468181475_))
                                        (let ((_hd181472181497_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e181468181475_)))
                                              (_tl181473181499_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e181468181475_))))
                                          (let* ((_tag181502_ _hd181472181497_)
                                                 (_body181504_
                                                  _tl181473181499_))
                                            (declare (not safe))
                                            (_K181471181494_
                                             _body181504_
                                             _tag181502_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E181470181479_)))))))
                             (_make-body181456_
                              (lambda (_vars181458_)
                                (let ((__tmp186803
                                       (map (lambda (_mvar181460_)
                                              (let ((__tmp186804
                                                     (car _mvar181460_)))
                                                (declare (not safe))
                                                (assgetq __tmp186804
                                                         _vars181458_
                                                         _BUG181452_)))
                                            _mvars181448_)))
                                  (declare (not safe))
                                  (cons _K181449_ __tmp186803)))))
                      (let ()
                        (declare (not safe))
                        (_recur181453_
                         _hd181447_
                         '()
                         _target181446_
                         _E181450_
                         _make-body181456_)))))
                 (_parse-clause181282_
                  (lambda (_hd181351_ _ids181352_)
                    (let _recur181354_ ((_e181356_ _hd181351_)
                                        (_vars181357_ '())
                                        (_depth181358_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e181356_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e181356_))
                              (values '(any) _vars181357_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e181356_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx181273_
                                     _hd181351_))
                                  (if (let ((__tmp186820
                                             (lambda (_id181360_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e181356_
                                                  _id181360_)))))
                                        (declare (not safe))
                                        (find __tmp186820 _ids181352_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e181356_))
                                              _vars181357_)
                                      (if (let ((__tmp186818
                                                 (lambda (_var181362_)
                                                   (let ((__tmp186819
                                                          (car _var181362_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e181356_
                                                      __tmp186819)))))
                                            (declare (not safe))
                                            (find __tmp186818 _vars181357_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx181273_
                                             _e181356_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e181356_))
                                                  (let ((__tmp186817
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e181356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth181358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186817
                                                          _vars181357_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e181356_))
                              (let* ((_e181363181370_ _e181356_)
                                     (_E181365181374_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e181363181370_))))
                                     (_E181364181435_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e181363181370_))
                                            (let ((_e181366181378_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e181363181370_))))
                                              (let ((_hd181367181381_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e181366181378_)))
                                                    (_tl181368181383_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e181366181378_))))
                                                (let* ((_hd181386_
                                                        _hd181367181381_)
                                                       (_rest181388_
                                                        _tl181368181383_))
                                                  (if '#t
                                                      (let* ((_make-pair181403_
                                                              (lambda (_tag181390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd181391_
                               _tl181392_)
                        (let* ((_hd-depth181394_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag181390_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth181358_ '1))
                                    _depth181358_))
                               (_g186812_
                                (let ()
                                  (declare (not safe))
                                  (_recur181354_
                                   _hd181391_
                                   _vars181357_
                                   _hd-depth181394_))))
                          (begin
                            (let ((_g186813_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g186812_)
                                         (##vector-length _g186812_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g186813_ 2)))
                                  (error "Context expects 2 values"
                                         _g186813_)))
                            (let ((_hd181396_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g186812_ 0)))
                                  (_vars181397_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g186812_ 1))))
                              (let ((_g186814_
                                     (let ()
                                       (declare (not safe))
                                       (_recur181354_
                                        _tl181392_
                                        _vars181397_
                                        _depth181358_))))
                                (begin
                                  (let ((_g186815_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g186814_)
                                               (##vector-length _g186814_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g186815_ 2)))
                                        (error "Context expects 2 values"
                                               _g186815_)))
                                  (let ((_tl181399_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g186814_ 0)))
                                        (_vars181400_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g186814_ 1))))
                                    (let ()
                                      (values (let ((__tmp186816
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd181396_
                                                             _tl181399_))))
                                                (declare (not safe))
                                                (cons _tag181390_ __tmp186816))
                                              _vars181400_))))))))))
                     (_e181404181411_ _rest181388_)
                     (_E181406181415_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair181403_ 'cons _hd181386_ _rest181388_))))
                     (_E181405181431_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e181404181411_))
                            (let ((_e181407181419_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e181404181411_))))
                              (let ((_hd181408181422_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e181407181419_)))
                                    (_tl181409181424_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e181407181419_))))
                                (let* ((_rest-hd181427_ _hd181408181422_)
                                       (_rest-tl181429_ _tl181409181424_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd181427_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair181403_
                                             'splice
                                             _hd181386_
                                             _rest-tl181429_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair181403_
                                             'cons
                                             _hd181386_
                                             _rest181388_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E181406181415_))))))
                            (let () (declare (not safe)) (_E181406181415_))))))
                (let () (declare (not safe)) (_E181405181431_)))
              (let () (declare (not safe)) (_E181365181374_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E181365181374_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E181364181435_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e181356_))
                                  (values '(null) _vars181357_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e181356_))
                                      (let ((_g186809_
                                             (let ((__tmp186811
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e181356_)))))
                                               (declare (not safe))
                                               (_recur181354_
                                                __tmp186811
                                                _vars181357_
                                                _depth181358_))))
                                        (begin
                                          (let ((_g186810_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g186809_)
                                                       (##vector-length
                                                        _g186809_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g186810_ 2)))
                                                (error "Context expects 2 values"
                                                       _g186810_)))
                                          (let ((_e181439_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g186809_ 0)))
                                                (_vars181440_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g186809_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e181439_))
                                                    _vars181440_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e181356_))
                                          (let ((_g186806_
                                                 (let ((__tmp186808
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e181356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur181354_
                                                    __tmp186808
                                                    _vars181357_
                                                    _depth181358_))))
                                            (begin
                                              (let ((_g186807_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g186806_)
                                                           (##vector-length
                                                            _g186806_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g186807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g186807_)))
                                              (let ((_e181442_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g186806_
                                                        0)))
                                                    (_vars181443_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g186806_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e181442_))
                                                        _vars181443_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e181356_))
                                              (values (let ((__tmp186805
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e181356_))))
                (declare (not safe))
                (cons 'datum __tmp186805))
              _vars181357_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx181273_
                                                 _e181356_))))))))))))
          (let* ((_e181283181296_ _stx181273_)
                 (_E181285181300_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e181283181296_))))
                 (_E181284181347_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e181283181296_))
                        (let ((_e181286181304_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e181283181296_))))
                          (let ((_hd181287181307_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e181286181304_)))
                                (_tl181288181309_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e181286181304_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl181288181309_))
                                (let ((_e181289181312_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl181288181309_))))
                                  (let ((_hd181290181315_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e181289181312_)))
                                        (_tl181291181317_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e181289181312_))))
                                    (let ((_expr181320_ _hd181290181315_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl181291181317_))
                                          (let ((_e181292181322_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl181291181317_))))
                                            (let ((_hd181293181325_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e181292181322_)))
                                                  (_tl181294181327_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e181292181322_))))
                                              (let* ((_ids181330_
                                                      _hd181293181325_)
                                                     (_clauses181332_
                                                      _tl181294181327_))
                                                (if '#t
                                                    (if (let ((__tmp186838
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids181330_))))
                  (declare (not safe))
                  (not __tmp186838))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx181273_
                   _ids181330_))
                (if (let ((__tmp186837
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses181332_))))
                      (declare (not safe))
                      (not __tmp186837))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx181273_))
                    (let* ((_ids181334_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids181330_)))
                           (_clauses181336_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses181332_)))
                           (_clause-ids181338_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses181336_)))
                           (_E181340_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target181342_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first181344_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses181336_))
                                _E181340_
                                (car _clause-ids181338_))))
                      (let ((__tmp186822
                             (let ((__tmp186823
                                    (let ((__tmp186825
                                           (let ((__tmp186830
                                                  (let ((__tmp186831
                                                         (let ((__tmp186836
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E181340_ '())))
                       (__tmp186832
                        (let ((__tmp186833
                               (let ((__tmp186835
                                      (let ()
                                        (declare (not safe))
                                        (cons _target181342_ '())))
                                     (__tmp186834
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target181342_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp186835
                                  __tmp186834))))
                          (declare (not safe))
                          (cons __tmp186833 '()))))
                   (declare (not safe))
                   (cons __tmp186836 __tmp186832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186831 '())))
                                                 (__tmp186826
                                                  (let ((__tmp186829
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings181278_
                                                            _target181342_
                                                            _ids181334_
                                                            _clauses181336_
                                                            _clause-ids181338_
                                                            _E181340_)))
                                                        (__tmp186827
                                                         (let ((__tmp186828
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr181320_ '()))))
                   (declare (not safe))
                   (cons _first181344_ __tmp186828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body181279_
                                                     __tmp186829
                                                     __tmp186827))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp186830
                                              __tmp186826)))
                                          (__tmp186824
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx181273_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp186825
                                       __tmp186824))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp186823)))
                            (__tmp186821
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx181273_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp186822 __tmp186821)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E181285181300_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E181285181300_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E181285181300_)))))
                        (let () (declare (not safe)) (_E181285181300_))))))
            (let () (declare (not safe)) (_E181284181347_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx181983_)
        (let* ((_identifier=?181985_ 'free-identifier=?)
               (_unwrap-e181987_ 'syntax-e)
               (_wrap-e181989_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181983_
           _identifier=?181985_
           _unwrap-e181987_
           _wrap-e181989_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx181991_ _identifier=?181992_)
        (let* ((_unwrap-e181994_ 'syntax-e) (_wrap-e181996_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181991_
           _identifier=?181992_
           _unwrap-e181994_
           _wrap-e181996_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx181998_ _identifier=?181999_ _unwrap-e182000_)
        (let ((_wrap-e182002_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181998_
           _identifier=?181999_
           _unwrap-e182000_
           _wrap-e182002_))))
    (define gx#macro-expand-syntax-case
      (lambda _g186840_
        (let ((_g186839_ (let () (declare (not safe)) (##length _g186840_))))
          (cond ((let () (declare (not safe)) (##fx= _g186839_ 1))
                 (apply (lambda (_stx181983_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx181983_)))
                        _g186840_))
                ((let () (declare (not safe)) (##fx= _g186839_ 2))
                 (apply (lambda (_stx181991_ _identifier=?181992_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx181991_
                             _identifier=?181992_)))
                        _g186840_))
                ((let () (declare (not safe)) (##fx= _g186839_ 3))
                 (apply (lambda (_stx181998_
                                 _identifier=?181999_
                                 _unwrap-e182000_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx181998_
                             _identifier=?181999_
                             _unwrap-e182000_)))
                        _g186840_))
                ((let () (declare (not safe)) (##fx= _g186839_ 4))
                 (apply (lambda (_stx182004_
                                 _identifier=?182005_
                                 _unwrap-e182006_
                                 _wrap-e182007_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx182004_
                             _identifier=?182005_
                             _unwrap-e182006_
                             _wrap-e182007_)))
                        _g186840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g186840_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx181270_)
        (if (let () (declare (not safe)) (gx#identifier? _stx181270_))
            (let ((__tmp186841
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx181270_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp186841 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd181228_ . _rest181229_)
        (let ((_len181231_ (length _hd181228_)))
          (let _lp181233_ ((_rest181235_ _rest181229_))
            (let* ((_rest181236181244_ _rest181235_)
                   (_else181238181252_ (lambda () '#!void))
                   (_K181240181258_
                    (lambda (_rest181255_ _hd181256_)
                      (if (fx= _len181231_ (length _hd181256_))
                          (let ()
                            (declare (not safe))
                            (_lp181233_ _rest181255_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd181256_))))))
              (if (let () (declare (not safe)) (##pair? _rest181236181244_))
                  (let ((_hd181241181261_
                         (let ()
                           (declare (not safe))
                           (##car _rest181236181244_)))
                        (_tl181242181263_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest181236181244_))))
                    (let* ((_hd181266_ _hd181241181261_)
                           (_rest181268_ _tl181242181263_))
                      (declare (not safe))
                      (_K181240181258_ _rest181268_ _hd181266_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx181186_ _n181187_)
        (let _lp181189_ ((_rest181191_ _stx181186_) (_r181192_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest181191_))
              (let* ((_g181193181200_
                      (let () (declare (not safe)) (gx#syntax-e _rest181191_)))
                     (_E181195181204_
                      (lambda ()
                        (error '"No clause matching" _g181193181200_)))
                     (_K181196181210_
                      (lambda (_rest181207_ _hd181208_)
                        (let ((__tmp186846
                               (let ()
                                 (declare (not safe))
                                 (cons _hd181208_ _r181192_))))
                          (declare (not safe))
                          (_lp181189_ _rest181207_ __tmp186846)))))
                (if (let () (declare (not safe)) (##pair? _g181193181200_))
                    (let ((_hd181197181213_
                           (let ()
                             (declare (not safe))
                             (##car _g181193181200_)))
                          (_tl181198181215_
                           (let ()
                             (declare (not safe))
                             (##cdr _g181193181200_))))
                      (let* ((_hd181218_ _hd181197181213_)
                             (_rest181220_ _tl181198181215_))
                        (declare (not safe))
                        (_K181196181210_ _rest181220_ _hd181218_)))
                    (let () (declare (not safe)) (_E181195181204_))))
              (let _lp181222_ ((_n181224_ _n181187_)
                               (_l181225_ _r181192_)
                               (_r181226_ _rest181191_))
                (if (let () (declare (not safe)) (null? _l181225_))
                    (values _l181225_ _r181226_)
                    (if (fxpositive? _n181224_)
                        (let ((__tmp186845
                               (let ()
                                 (declare (not safe))
                                 (fx- _n181224_ '1)))
                              (__tmp186844 (cdr _l181225_))
                              (__tmp186842
                               (let ((__tmp186843 (car _l181225_)))
                                 (declare (not safe))
                                 (cons __tmp186843 _r181226_))))
                          (declare (not safe))
                          (_lp181222_ __tmp186845 __tmp186844 __tmp186842))
                        (values (reverse _l181225_) _r181226_))))))))))
