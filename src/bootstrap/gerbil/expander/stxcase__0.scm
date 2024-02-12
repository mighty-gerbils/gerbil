(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707740668)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp184800 (list gx#expander::t))
            (__tmp184798
             (let ((__tmp184799
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp184799 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp184800
         '(id depth)
         __tmp184798
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args180227_
        (apply make-instance gx#syntax-pattern::t _$args180227_)))
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
      (lambda (_self180224_ _stx180225_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx180225_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx179706_)
        (letrec ((_generate179708_
                  (lambda (_e179935_)
                    (letrec ((_BUG179937_
                              (lambda (_q180099_)
                                (error '"BUG: syntax; generate"
                                       _stx179706_
                                       _e179935_
                                       _q180099_)))
                             (_local-pattern-e179938_
                              (lambda (_pat180097_)
                                (let ((__tmp184801
                                       (##structure-ref
                                        _pat180097_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp184801))))
                             (_getvar179939_
                              (lambda (_q180094_ _vars180095_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q180094_
                                           _vars180095_
                                           _BUG179937_))))
                             (_getarg179940_
                              (lambda (_arg180060_ _vars180061_)
                                (let* ((_arg180062180069_ _arg180060_)
                                       (_E180064180073_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg180062180069_)))
                                       (_K180065180082_
                                        (lambda (_e180076_ _tag180077_)
                                          (let ((_$e180079_ _tag180077_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e180079_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar179939_
                                                   _e180076_
                                                   _vars180061_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e180079_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e179938_
                                                       _e180076_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG179937_
                                                       _arg180060_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg180062180069_))
                                      (let ((_hd180066180085_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg180062180069_)))
                                            (_tl180067180087_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg180062180069_))))
                                        (let* ((_tag180090_ _hd180066180085_)
                                               (_e180092_ _tl180067180087_))
                                          (declare (not safe))
                                          (_K180065180082_
                                           _e180092_
                                           _tag180090_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180064180073_)))))))
                      (let _recur179942_ ((_e179944_ _e179935_)
                                          (_vars179945_ '()))
                        (let* ((_e179946179953_ _e179944_)
                               (_E179948179957_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e179946179953_)))
                               (_K179949180048_
                                (lambda (_body179960_ _tag179961_)
                                  (let ((_$e179963_ _tag179961_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e179963_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body179960_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e179963_))
                                            (let ((_id179966_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body179960_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id179966_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks179968_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id179966_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks179968_))
                                                        (let ((__tmp184829
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body179960_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp184829))
                (let ((__tmp184828
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body179960_)))
                      (__tmp184827
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body179960_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp184828
                   __tmp184827
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id179966_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body179960_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG179937_
                                                         _e179944_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e179963_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e179938_
                                                   _body179960_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e179963_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar179939_
                                                       _body179960_
                                                       _vars179945_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e179963_))
                                                        (let ((__tmp184825
                                                               (let ((__tmp184826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body179960_)))
                         (declare (not safe))
                         (_recur179942_ __tmp184826 _vars179945_)))
                      (__tmp184823
                       (let ((__tmp184824 (cdr _body179960_)))
                         (declare (not safe))
                         (_recur179942_ __tmp184824 _vars179945_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp184825 __tmp184823))
                (if (let () (declare (not safe)) (eq? 'vector _$e179963_))
                    (let ((__tmp184822
                           (let ()
                             (declare (not safe))
                             (_recur179942_ _body179960_ _vars179945_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp184822))
                    (if (let () (declare (not safe)) (eq? 'box _$e179963_))
                        (let ((__tmp184821
                               (let ()
                                 (declare (not safe))
                                 (_recur179942_ _body179960_ _vars179945_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp184821))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e179963_))
                            (let* ((_body179969179980_ _body179960_)
                                   (_E179971179984_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body179969179980_)))
                                   (_K179972180022_
                                    (lambda (_args179987_
                                             _iv179988_
                                             _hd179989_
                                             _depth179990_)
                                      (let* ((_targets179996_
                                              (map (lambda (_g179991179993_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg179940_
                                                        _g179991179993_
                                                        _vars179945_)))
                                                   _args179987_))
                                             (_fold-in179998_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args179987_)))
                                             (_fold-out180000_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args180002_
                                              (let ((__tmp184802
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out180000_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp184802
                                                        _fold-in179998_)))
                                             (_lambda-body180019_
                                              (if (fx> _depth179990_ '1)
                                                  (let ((_r-args180010_
                                                         (map (lambda (_arg180004_)
                                                                (let ((__tmp184807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg180004_)))
                          (declare (not safe))
                          (cons 'ref __tmp184807)))
                      _args179987_))
                (_r-vars180011_
                 (let ((__tmp184808
                        (lambda (_arg180006_ _var180007_ _r180008_)
                          (let ((__tmp184809
                                 (let ((__tmp184810 (cdr _arg180006_)))
                                   (declare (not safe))
                                   (cons __tmp184810 _var180007_))))
                            (declare (not safe))
                            (cons __tmp184809 _r180008_)))))
                   (declare (not safe))
                   (foldr2 __tmp184808
                           _vars179945_
                           _args179987_
                           _fold-in179998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp184811
                                                           (let ((__tmp184812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184816
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth179990_ '1)))
                                (__tmp184813
                                 (let ((__tmp184814
                                        (let ((__tmp184815
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out180000_))))
                                          (declare (not safe))
                                          (cons __tmp184815 _r-args180010_))))
                                   (declare (not safe))
                                   (cons _hd179989_ __tmp184814))))
                            (declare (not safe))
                            (cons __tmp184816 __tmp184813))))
                     (declare (not safe))
                     (cons 'splice __tmp184812))))
              (declare (not safe))
              (_recur179942_ __tmp184811 _r-vars180011_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars180017_
                                                          (let ((__tmp184803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg180013_ _var180014_ _r180015_)
                           (let ((__tmp184804
                                  (let ((__tmp184805 (cdr _arg180013_)))
                                    (declare (not safe))
                                    (cons __tmp184805 _var180014_))))
                             (declare (not safe))
                             (cons __tmp184804 _r180015_)))))
                    (declare (not safe))
                    (foldr2 __tmp184803
                            _vars179945_
                            _args179987_
                            _fold-in179998_)))
                 (__tmp184806
                  (let ()
                    (declare (not safe))
                    (_recur179942_ _hd179989_ _hd-vars180017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp184806
                                                     _fold-out180000_)))))
                                        (let ((__tmp184820
                                               (if (fx> (length _targets179996_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets179996_))
                                                   '#!void))
                                              (__tmp184817
                                               (let ((__tmp184819
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args180002_
                                                         _lambda-body180019_)))
                                                     (__tmp184818
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur179942_
                                                         _iv179988_
                                                         _vars179945_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp184819
                                                  __tmp184818
                                                  _targets179996_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp184820
                                           __tmp184817))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body179969179980_))
                                  (let ((_hd179973180025_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body179969179980_)))
                                        (_tl179974180027_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body179969179980_))))
                                    (let ((_depth180030_ _hd179973180025_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl179974180027_))
                                          (let ((_hd179975180032_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl179974180027_)))
                                                (_tl179976180034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl179974180027_))))
                                            (let ((_hd180037_
                                                   _hd179975180032_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl179976180034_))
                                                  (let ((_hd179977180039_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl179976180034_)))
                                                        (_tl179978180041_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl179976180034_))))
                                                    (let* ((_iv180044_
                                                            _hd179977180039_)
                                                           (_args180046_
                                                            _tl179978180041_))
                                                      (declare (not safe))
                                                      (_K179972180022_
                                                       _args180046_
                                                       _iv180044_
                                                       _hd180037_
                                                       _depth180030_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179971179984_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E179971179984_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E179971179984_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e179963_))
                                _body179960_
                                (let ()
                                  (declare (not safe))
                                  (_BUG179937_ _e179944_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e179946179953_))
                              (let ((_hd179950180051_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e179946179953_)))
                                    (_tl179951180053_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e179946179953_))))
                                (let* ((_tag180056_ _hd179950180051_)
                                       (_body180058_ _tl179951180053_))
                                  (declare (not safe))
                                  (_K179949180048_ _body180058_ _tag180056_)))
                              (let ()
                                (declare (not safe))
                                (_E179948179957_))))))))
                 (_parse179709_
                  (lambda (_e179750_)
                    (letrec ((_make-cons179752_
                              (lambda (_hd179927_ _tl179928_)
                                (let ((_g184830_ _hd179927_)
                                      (_g184832_ _tl179928_))
                                  (begin
                                    (let ((_g184831_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184830_)
                                                 (##vector-length _g184830_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184831_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184831_)))
                                    (let ((_g184833_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184832_)
                                                 (##vector-length _g184832_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184833_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184833_)))
                                    (let ((_hd-e179930_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184830_ 0)))
                                          (_hd-vars179931_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184830_ 1))))
                                      (let ((_tl-e179932_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184832_ 0)))
                                            (_tl-vars179933_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184832_ 1))))
                                        (values (let ((__tmp184834
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e179930_
                                                               _tl-e179932_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp184834))
                                                (append _hd-vars179931_
                                                        _tl-vars179933_))))))))
                             (_make-splice179753_
                              (lambda (_where179866_
                                       _depth179867_
                                       _hd179868_
                                       _tl179869_)
                                (let ((_g184835_ _hd179868_)
                                      (_g184837_ _tl179869_))
                                  (begin
                                    (let ((_g184836_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184835_)
                                                 (##vector-length _g184835_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184836_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184836_)))
                                    (let ((_g184838_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184837_)
                                                 (##vector-length _g184837_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184838_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184838_)))
                                    (let ((_hd-e179871_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184835_ 0)))
                                          (_hd-vars179872_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184835_ 1))))
                                      (let ((_tl-e179873_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184837_ 0)))
                                            (_tl-vars179874_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184837_ 1))))
                                        (let _lp179876_ ((_rest179878_
                                                          _hd-vars179872_)
                                                         (_targets179879_ '())
                                                         (_vars179880_
                                                          _tl-vars179874_))
                                          (let* ((_rest179881179891_
                                                  _rest179878_)
                                                 (_else179883179899_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets179879_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx179706_
                                                           _where179866_))
                                                        (values (let ((__tmp184839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp184840
                                      (let ((__tmp184841
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e179873_
                                                     _targets179879_))))
                                        (declare (not safe))
                                        (cons _hd-e179871_ __tmp184841))))
                                 (declare (not safe))
                                 (cons _depth179867_ __tmp184840))))
                          (declare (not safe))
                          (cons 'splice __tmp184839))
                        _vars179880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K179885179908_
                                                  (lambda (_rest179902_
                                                           _hd-pat179903_
                                                           _hd-depth*179904_)
                                                    (let ((_hd-depth179906_
                                                           (fx- _hd-depth*179904_
                                                                _depth179867_)))
                                                      (if (fxpositive?
                                                           _hd-depth179906_)
                                                          (let ((__tmp184846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp184847
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat179903_))))
                           (declare (not safe))
                           (cons __tmp184847 _targets179879_)))
                        (__tmp184844
                         (let ((__tmp184845
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth179906_ _hd-pat179903_))))
                           (declare (not safe))
                           (cons __tmp184845 _vars179880_))))
                    (declare (not safe))
                    (_lp179876_ _rest179902_ __tmp184846 __tmp184844))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth179906_))
                      (let ((__tmp184842
                             (let ((__tmp184843
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat179903_))))
                               (declare (not safe))
                               (cons __tmp184843 _targets179879_))))
                        (declare (not safe))
                        (_lp179876_ _rest179902_ __tmp184842 _vars179880_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx179706_
                         _where179866_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest179881179891_))
                                                (let ((_hd179886179911_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest179881179891_)))
                                                      (_tl179887179913_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest179881179891_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd179886179911_))
                                                      (let ((_hd179888179916_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd179886179911_)))
                    (_tl179889179918_
                     (let () (declare (not safe)) (##cdr _hd179886179911_))))
                (let* ((_hd-depth*179921_ _hd179888179916_)
                       (_hd-pat179923_ _tl179889179918_)
                       (_rest179925_ _tl179887179913_))
                  (declare (not safe))
                  (_K179885179908_
                   _rest179925_
                   _hd-pat179923_
                   _hd-depth*179921_)))
              (let () (declare (not safe)) (_else179883179899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else179883179899_)))))))))))
                             (_recur179754_
                              (lambda (_e179759_ _is-e?179760_)
                                (if (_is-e?179760_ _e179759_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx179706_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e179759_))
                                        (let* ((_pat179762_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e179759_)))
                                               (_depth179764_
                                                (##structure-ref
                                                 _pat179762_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth179764_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat179762_))
                                                      (let ((__tmp184863
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth179764_ _pat179762_))))
                (declare (not safe))
                (cons __tmp184863 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat179762_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e179759_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e179759_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e179759_))
                                                (let* ((_e179766179773_
                                                        _e179759_)
                                                       (_E179768179777_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e179766179773_))))
                                                       (_E179767179856_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e179766179773_))
                      (let ((_e179769179781_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e179766179773_))))
                        (let ((_hd179770179784_
                               (let ()
                                 (declare (not safe))
                                 (##car _e179769179781_)))
                              (_tl179771179786_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e179769179781_))))
                          (let* ((_hd179789_ _hd179770179784_)
                                 (_rest179791_ _tl179771179786_))
                            (if '#t
                                (if (_is-e?179760_ _hd179789_)
                                    (let* ((_e179792179799_ _rest179791_)
                                           (_E179794179803_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx179706_
                                                 _e179759_))))
                                           (_E179793179817_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e179792179799_))
                                                  (let ((_e179795179807_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e179792179799_))))
                                                    (let ((_hd179796179810_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e179795179807_)))
                                                          (_tl179797179812_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e179795179807_))))
                                                      (let ((_rest179815_
                                                             _hd179796179810_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl179797179812_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur179754_ _rest179815_ false))
                        (let () (declare (not safe)) (_E179794179803_)))
                    (let () (declare (not safe)) (_E179794179803_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179794179803_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E179793179817_)))
                                    (let _lp179821_ ((_rest179823_
                                                      _rest179791_)
                                                     (_depth179824_ '0))
                                      (let* ((_e179825179832_ _rest179823_)
                                             (_E179827179836_
                                              (lambda ()
                                                (if (fxpositive? _depth179824_)
                                                    (let ((__tmp184857
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179754_
                                                              _hd179789_
                                                              _is-e?179760_)))
                                                          (__tmp184856
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179754_
                                                              _rest179823_
                                                              _is-e?179760_))))
                                                      (declare (not safe))
                                                      (_make-splice179753_
                                                       _e179759_
                                                       _depth179824_
                                                       __tmp184857
                                                       __tmp184856))
                                                    (let ((__tmp184855
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179754_
                                                              _hd179789_
                                                              _is-e?179760_)))
                                                          (__tmp184854
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179754_
                                                              _rest179823_
                                                              _is-e?179760_))))
                                                      (declare (not safe))
                                                      (_make-cons179752_
                                                       __tmp184855
                                                       __tmp184854)))))
                                             (_E179826179852_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e179825179832_))
                                                    (let ((_e179828179840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e179825179832_))))
                                                      (let ((_hd179829179843_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e179828179840_)))
                    (_tl179830179845_
                     (let () (declare (not safe)) (##cdr _e179828179840_))))
                (let* ((_rest-hd179848_ _hd179829179843_)
                       (_rest-tl179850_ _tl179830179845_))
                  (if '#t
                      (if (_is-e?179760_ _rest-hd179848_)
                          (let ((__tmp184862
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth179824_ '1))))
                            (declare (not safe))
                            (_lp179821_ _rest-tl179850_ __tmp184862))
                          (if (fxpositive? _depth179824_)
                              (let ((__tmp184861
                                     (let ()
                                       (declare (not safe))
                                       (_recur179754_
                                        _hd179789_
                                        _is-e?179760_)))
                                    (__tmp184860
                                     (let ()
                                       (declare (not safe))
                                       (_recur179754_
                                        _rest179823_
                                        _is-e?179760_))))
                                (declare (not safe))
                                (_make-splice179753_
                                 _e179759_
                                 _depth179824_
                                 __tmp184861
                                 __tmp184860))
                              (let ((__tmp184859
                                     (let ()
                                       (declare (not safe))
                                       (_recur179754_
                                        _hd179789_
                                        _is-e?179760_)))
                                    (__tmp184858
                                     (let ()
                                       (declare (not safe))
                                       (_recur179754_
                                        _rest179823_
                                        _is-e?179760_))))
                                (declare (not safe))
                                (_make-cons179752_ __tmp184859 __tmp184858))))
                      (let () (declare (not safe)) (_E179827179836_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E179827179836_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E179826179852_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E179768179777_))))))
                      (let () (declare (not safe)) (_E179768179777_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179767179856_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e179759_))
                                                    (let ((_g184851_
                                                           (let ((__tmp184853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e179759_)))))
                     (declare (not safe))
                     (_recur179754_ __tmp184853 _is-e?179760_))))
              (begin
                (let ((_g184852_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g184851_)
                             (##vector-length _g184851_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g184852_ 2)))
                      (error "Context expects 2 values" _g184852_)))
                (let ((_e179860_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g184851_ 0)))
                      (_vars179861_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g184851_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e179860_))
                          _vars179861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e179759_))
                                                        (let ((_g184848_
                                                               (let ((__tmp184850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e179759_)))))
                         (declare (not safe))
                         (_recur179754_ __tmp184850 _is-e?179760_))))
                  (begin
                    (let ((_g184849_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g184848_)
                                 (##vector-length _g184848_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g184849_ 2)))
                          (error "Context expects 2 values" _g184849_)))
                    (let ((_e179863_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g184848_ 0)))
                          (_vars179864_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g184848_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e179863_))
                              _vars179864_))))
                (values (let () (declare (not safe)) (cons 'datum _e179759_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g184864_
                             (let ()
                               (declare (not safe))
                               (_recur179754_ _e179750_ gx#ellipsis?))))
                        (begin
                          (let ((_g184865_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g184864_)
                                       (##vector-length _g184864_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g184865_ 2)))
                                (error "Context expects 2 values" _g184865_)))
                          (let ((_tree179756_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g184864_ 0)))
                                (_vars179757_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g184864_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars179757_))
                                _tree179756_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx179706_
                                   _vars179757_))))))))))
          (let* ((_e179710179720_ _stx179706_)
                 (_E179712179724_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx179706_))))
                 (_E179711179746_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e179710179720_))
                        (let ((_e179713179728_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e179710179720_))))
                          (let ((_hd179714179731_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e179713179728_)))
                                (_tl179715179733_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e179713179728_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl179715179733_))
                                (let ((_e179716179736_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl179715179733_))))
                                  (let ((_hd179717179739_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e179716179736_)))
                                        (_tl179718179741_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e179716179736_))))
                                    (let ((_form179744_ _hd179717179739_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl179718179741_))
                                          (if '#t
                                              (let ((__tmp184867
                                                     (let ((__tmp184868
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse179709_
                                                               _form179744_))))
                                                       (declare (not safe))
                                                       (_generate179708_
                                                        __tmp184868)))
                                                    (__tmp184866
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx179706_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp184867
                                                 __tmp184866))
                                              (let ()
                                                (declare (not safe))
                                                (_E179712179724_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E179712179724_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179712179724_)))))
                        (let () (declare (not safe)) (_E179712179724_))))))
            (let () (declare (not safe)) (_E179711179746_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx178970_
               _identifier=?178971_
               _unwrap-e178972_
               _wrap-e178973_)
        (letrec ((_generate-bindings178975_
                  (lambda (_target179570_
                           _ids179571_
                           _clauses179572_
                           _clause-ids179573_
                           _E179574_)
                    (letrec ((_generate1179576_
                              (lambda (_clause179673_
                                       _clause-id179674_
                                       _E179675_)
                                (let ((__tmp184873
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id179674_ '())))
                                      (__tmp184869
                                       (let ((__tmp184870
                                              (let ((__tmp184872
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target179570_
                                                             '())))
                                                    (__tmp184871
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause178977_
                                                        _target179570_
                                                        _ids179571_
                                                        _clause179673_
                                                        _E179675_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp184872
                                                 __tmp184871))))
                                         (declare (not safe))
                                         (cons __tmp184870 '()))))
                                  (declare (not safe))
                                  (cons __tmp184873 __tmp184869)))))
                      (let _lp179578_ ((_rest179580_ _clauses179572_)
                                       (_rest-ids179581_ _clause-ids179573_)
                                       (_bindings179582_ '()))
                        (let* ((_rest179583179591_ _rest179580_)
                               (_else179585179599_
                                (lambda () _bindings179582_))
                               (_K179587179661_
                                (lambda (_rest179602_ _clause179603_)
                                  (let* ((_rest-ids179604179611_
                                          _rest-ids179581_)
                                         (_E179606179615_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids179604179611_)))
                                         (_K179607179649_
                                          (lambda (_rest-ids179618_
                                                   _clause-id179619_)
                                            (let* ((_rest-ids179620179628_
                                                    _rest-ids179618_)
                                                   (_else179622179636_
                                                    (lambda ()
                                                      (let ((__tmp184874
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1179576_
                        _clause179603_
                        _clause-id179619_
                        _E179574_))))
                (declare (not safe))
                (cons __tmp184874 _bindings179582_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K179624179641_
                                                    (lambda (_next-clause-id179639_)
                                                      (let ((__tmp184875
                                                             (let ((__tmp184876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1179576_
                               _clause179603_
                               _clause-id179619_
                               _next-clause-id179639_))))
                       (declare (not safe))
                       (cons __tmp184876 _bindings179582_))))
                (declare (not safe))
                (_lp179578_ _rest179602_ _rest-ids179618_ __tmp184875)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids179620179628_))
                                                  (let* ((_hd179625179644_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids179620179628_)))
                                                         (_next-clause-id179647_
                                                          _hd179625179644_))
                                                    (declare (not safe))
                                                    (_K179624179641_
                                                     _next-clause-id179647_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else179622179636_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids179604179611_))
                                        (let ((_hd179608179652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids179604179611_)))
                                              (_tl179609179654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids179604179611_))))
                                          (let* ((_clause-id179657_
                                                  _hd179608179652_)
                                                 (_rest-ids179659_
                                                  _tl179609179654_))
                                            (declare (not safe))
                                            (_K179607179649_
                                             _rest-ids179659_
                                             _clause-id179657_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179606179615_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest179583179591_))
                              (let ((_hd179588179664_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest179583179591_)))
                                    (_tl179589179666_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest179583179591_))))
                                (let* ((_clause179669_ _hd179588179664_)
                                       (_rest179671_ _tl179589179666_))
                                  (declare (not safe))
                                  (_K179587179661_
                                   _rest179671_
                                   _clause179669_)))
                              (let ()
                                (declare (not safe))
                                (_else179585179599_))))))))
                 (_generate-body178976_
                  (lambda (_bindings179530_ _body179531_)
                    (let _recur179533_ ((_rest179535_ _bindings179530_))
                      (let* ((_rest179536179544_ _rest179535_)
                             (_else179538179552_ (lambda () _body179531_))
                             (_K179540179558_
                              (lambda (_rest179555_ _hd179556_)
                                (let ((__tmp184878
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd179556_ '())))
                                      (__tmp184877
                                       (let ()
                                         (declare (not safe))
                                         (_recur179533_ _rest179555_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp184878
                                   __tmp184877)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest179536179544_))
                            (let ((_hd179541179561_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest179536179544_)))
                                  (_tl179542179563_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest179536179544_))))
                              (let* ((_hd179566_ _hd179541179561_)
                                     (_rest179568_ _tl179542179563_))
                                (declare (not safe))
                                (_K179540179558_ _rest179568_ _hd179566_)))
                            (let ()
                              (declare (not safe))
                              (_else179538179552_)))))))
                 (_generate-clause178977_
                  (lambda (_target179393_ _ids179394_ _clause179395_ _E179396_)
                    (letrec ((_generate1179398_
                              (lambda (_hd179485_ _fender179486_ _body179487_)
                                (let ((_g184879_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause178979_
                                          _hd179485_
                                          _ids179394_))))
                                  (begin
                                    (let ((_g184880_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184879_)
                                                 (##vector-length _g184879_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184880_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184880_)))
                                    (let ((_e179489_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184879_ 0)))
                                          (_mvars179490_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184879_ 1))))
                                      (let* ((_pvars179492_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars179490_))))
                                             (_E179494_
                                              (let ((__tmp184881
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target179393_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E179396_ __tmp184881)))
                                             (_K179527_
                                              (let ((__tmp184882
                                                     (let ((__tmp184884
                                                            (map (lambda (_mvar179496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar179497_)
                           (let* ((_mvar179498179505_ _mvar179496_)
                                  (_E179500179509_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar179498179505_)))
                                  (_K179501179515_
                                   (lambda (_depth179512_ _id179513_)
                                     (let ((__tmp184885
                                            (let ((__tmp184886
                                                   (let ((__tmp184888
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id179513_)))
                                                         (__tmp184887
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar179497_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp184888
                                                      __tmp184887
                                                      _depth179512_))))
                                              (declare (not safe))
                                              (cons __tmp184886 '()))))
                                       (declare (not safe))
                                       (cons _id179513_ __tmp184885)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar179498179505_))
                                 (let ((_hd179502179518_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar179498179505_)))
                                       (_tl179503179520_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar179498179505_))))
                                   (let* ((_id179523_ _hd179502179518_)
                                          (_depth179525_ _tl179503179520_))
                                     (declare (not safe))
                                     (_K179501179515_
                                      _depth179525_
                                      _id179523_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E179500179509_)))))
                         _mvars179490_
                         _pvars179492_))
                   (__tmp184883
                    (if (let () (declare (not safe)) (eq? _fender179486_ '#t))
                        _body179487_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender179486_
                           _body179487_
                           _E179494_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp184884 __tmp184883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars179492_
                                                 __tmp184882))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match178978_
                                           _hd179485_
                                           _target179393_
                                           _e179489_
                                           _mvars179490_
                                           _K179527_
                                           _E179494_)))))))))
                      (let* ((_e179399179419_ _clause179395_)
                             (_E179408179423_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e179399179419_))))
                             (_E179401179457_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e179399179419_))
                                    (let ((_e179409179427_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e179399179419_))))
                                      (let ((_hd179410179430_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179409179427_)))
                                            (_tl179411179432_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179409179427_))))
                                        (let ((_hd179435_ _hd179410179430_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl179411179432_))
                                              (let ((_e179412179437_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl179411179432_))))
                                                (let ((_hd179413179440_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e179412179437_)))
                                                      (_tl179414179442_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e179412179437_))))
                                                  (let ((_fender179445_
                                                         _hd179413179440_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl179414179442_))
                                                        (let ((_e179415179447_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl179414179442_))))
                  (let ((_hd179416179450_
                         (let () (declare (not safe)) (##car _e179415179447_)))
                        (_tl179417179452_
                         (let ()
                           (declare (not safe))
                           (##cdr _e179415179447_))))
                    (let ((_body179455_ _hd179416179450_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl179417179452_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1179398_
                                 _hd179435_
                                 _fender179445_
                                 _body179455_))
                              (let () (declare (not safe)) (_E179408179423_)))
                          (let () (declare (not safe)) (_E179408179423_))))))
                (let () (declare (not safe)) (_E179408179423_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E179408179423_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E179408179423_)))))
                             (_E179400179481_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e179399179419_))
                                    (let ((_e179402179461_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e179399179419_))))
                                      (let ((_hd179403179464_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179402179461_)))
                                            (_tl179404179466_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179402179461_))))
                                        (let ((_hd179469_ _hd179403179464_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl179404179466_))
                                              (let ((_e179405179471_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl179404179466_))))
                                                (let ((_hd179406179474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e179405179471_)))
                                                      (_tl179407179476_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e179405179471_))))
                                                  (let ((_body179479_
                                                         _hd179406179474_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl179407179476_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1179398_
                                                               _hd179469_
                                                               '#t
                                                               _body179479_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E179401179457_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E179401179457_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E179401179457_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E179401179457_))))))
                        (let () (declare (not safe)) (_E179400179481_))))))
                 (_generate-match178978_
                  (lambda (_where179142_
                           _target179143_
                           _hd179144_
                           _mvars179145_
                           _K179146_
                           _E179147_)
                    (letrec ((_BUG179149_
                              (lambda (_q179391_)
                                (error '"BUG: syntax-case; generate"
                                       _stx178970_
                                       _hd179144_
                                       _q179391_)))
                             (_recur179150_
                              (lambda (_e179241_
                                       _vars179242_
                                       _target179243_
                                       _E179244_
                                       _k179245_)
                                (let* ((_e179246179253_ _e179241_)
                                       (_E179248179257_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e179246179253_)))
                                       (_K179249179379_
                                        (lambda (_body179260_ _tag179261_)
                                          (let ((_$e179263_ _tag179261_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e179263_))
                                                (_k179245_ _vars179242_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e179263_))
                                                    (let ((__tmp184995
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target179243_)))
                                                          (__tmp184991
                                                           (let ((__tmp184993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184994
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e178973_
                                    _body179260_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?178971_
                             __tmp184994
                             _target179243_)))
                         (__tmp184992 (_k179245_ _vars179242_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp184993 __tmp184992 _E179244_))))
              (declare (not safe))
              (gx#core-list 'if __tmp184995 __tmp184991 _E179244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e179263_))
                                                        (_k179245_
                                                         (let ((__tmp184990
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body179260_ _target179243_))))
                   (declare (not safe))
                   (cons __tmp184990 _vars179242_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e179263_))
                    (let ((_$e179266_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd179267_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl179268_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp184989
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target179243_)))
                            (__tmp184970
                             (let ((__tmp184984
                                    (let ((__tmp184985
                                           (let ((__tmp184988
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e179266_ '())))
                                                 (__tmp184986
                                                  (let ((__tmp184987
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e178972_
                                                            _target179243_))))
                                                    (declare (not safe))
                                                    (cons __tmp184987 '()))))
                                             (declare (not safe))
                                             (cons __tmp184988 __tmp184986))))
                                      (declare (not safe))
                                      (cons __tmp184985 '())))
                                   (__tmp184971
                                    (let ((__tmp184974
                                           (let ((__tmp184980
                                                  (let ((__tmp184983
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd179267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp184981
                 (let ((__tmp184982
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e179266_))))
                   (declare (not safe))
                   (cons __tmp184982 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp184983
                                                          __tmp184981)))
                                                 (__tmp184975
                                                  (let ((__tmp184976
                                                         (let ((__tmp184979
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl179268_ '())))
                       (__tmp184977
                        (let ((__tmp184978
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e179266_))))
                          (declare (not safe))
                          (cons __tmp184978 '()))))
                   (declare (not safe))
                   (cons __tmp184979 __tmp184977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp184976 '()))))
                                             (declare (not safe))
                                             (cons __tmp184980 __tmp184975)))
                                          (__tmp184972
                                           (let* ((_body179269179276_
                                                   _body179260_)
                                                  (_E179271179280_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body179269179276_)))
                                                  (_K179272179288_
                                                   (lambda (_tl179283_
                                                            _hd179284_)
                                                     (let ((__tmp184973
                                                            (lambda (_vars179286_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur179150_
                         _tl179283_
                         _vars179286_
                         _$tl179268_
                         _E179244_
                         _k179245_)))))
               (declare (not safe))
               (_recur179150_
                _hd179284_
                _vars179242_
                _$hd179267_
                _E179244_
                __tmp184973)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body179269179276_))
                                                 (let ((_hd179273179291_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body179269179276_)))
                                                       (_tl179274179293_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body179269179276_))))
                                                   (let* ((_hd179296_
                                                           _hd179273179291_)
                                                          (_tl179298_
                                                           _tl179274179293_))
                                                     (declare (not safe))
                                                     (_K179272179288_
                                                      _tl179298_
                                                      _hd179296_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E179271179280_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp184974
                                       __tmp184972))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp184984
                                __tmp184971))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp184989 __tmp184970 _E179244_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e179263_))
                        (let* ((_body179299179306_ _body179260_)
                               (_E179301179310_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body179299179306_)))
                               (_K179302179361_
                                (lambda (_tl179313_ _hd179314_)
                                  (let* ((_rlen179316_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen179151_ _tl179313_)))
                                         (_$target179318_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd179320_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl179322_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp179324_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e179326_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd179328_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl179330_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars179332_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars179152_ _hd179314_)))
                                         (_lvars179334_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars179332_)))
                                         (_tlvars179336_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars179332_)))
                                         (_linit179340_
                                          (map (lambda (_var179338_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars179334_)))
                                    (letrec ((_make-loop179343_
                                              (lambda (_vars179347_)
                                                (let ((__tmp184921
                                                       (let ((__tmp184922
                                                              (let ((__tmp184958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp179324_ '())))
                            (__tmp184923
                             (let ((__tmp184924
                                    (let ((__tmp184957
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd179320_ _lvars179334_)))
                                          (__tmp184925
                                           (let ((__tmp184956
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd179320_)))
                                                 (__tmp184934
                                                  (let ((__tmp184951
                                                         (let ((__tmp184952
                                                                (let ((__tmp184955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e179326_ '())))
                              (__tmp184953
                               (let ((__tmp184954
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e178972_
                                         _$hd179320_))))
                                 (declare (not safe))
                                 (cons __tmp184954 '()))))
                          (declare (not safe))
                          (cons __tmp184955 __tmp184953))))
                   (declare (not safe))
                   (cons __tmp184952 '())))
                (__tmp184935
                 (let ((__tmp184941
                        (let ((__tmp184947
                               (let ((__tmp184950
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd179328_ '())))
                                     (__tmp184948
                                      (let ((__tmp184949
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e179326_))))
                                        (declare (not safe))
                                        (cons __tmp184949 '()))))
                                 (declare (not safe))
                                 (cons __tmp184950 __tmp184948)))
                              (__tmp184942
                               (let ((__tmp184943
                                      (let ((__tmp184946
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl179330_ '())))
                                            (__tmp184944
                                             (let ((__tmp184945
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e179326_))))
                                               (declare (not safe))
                                               (cons __tmp184945 '()))))
                                        (declare (not safe))
                                        (cons __tmp184946 __tmp184944))))
                                 (declare (not safe))
                                 (cons __tmp184943 '()))))
                          (declare (not safe))
                          (cons __tmp184947 __tmp184942)))
                       (__tmp184936
                        (let ((__tmp184937
                               (lambda (_hdvars179349_)
                                 (let ((__tmp184938
                                        (let ((__tmp184939
                                               (map (lambda (_svar179351_
                                                             _lvar179352_)
                                                      (let ((__tmp184940
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar179351_ _hdvars179349_ _BUG179149_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp184940 _lvar179352_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars179332_
                                                    _lvars179334_)))
                                          (declare (not safe))
                                          (cons _$lp-tl179330_ __tmp184939))))
                                   (declare (not safe))
                                   (cons _$lp179324_ __tmp184938)))))
                          (declare (not safe))
                          (_recur179150_
                           _hd179314_
                           '()
                           _$lp-hd179328_
                           _E179244_
                           __tmp184937))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp184941 __tmp184936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp184951
                                                     __tmp184935)))
                                                 (__tmp184926
                                                  (let ((__tmp184930
                                                         (map (lambda (_lvar179354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar179355_)
                        (let ((__tmp184933
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar179355_ '())))
                              (__tmp184931
                               (let ((__tmp184932
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar179354_))))
                                 (declare (not safe))
                                 (cons __tmp184932 '()))))
                          (declare (not safe))
                          (cons __tmp184933 __tmp184931)))
                      _lvars179334_
                      _tlvars179336_))
                (__tmp184927
                 (_k179245_
                  (let ((__tmp184928
                         (lambda (_svar179357_ _tlvar179358_ _r179359_)
                           (let ((__tmp184929
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar179357_ _tlvar179358_))))
                             (declare (not safe))
                             (cons __tmp184929 _r179359_)))))
                    (declare (not safe))
                    (foldl2 __tmp184928
                            _vars179347_
                            _svars179332_
                            _tlvars179336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp184930
                                                     __tmp184927))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp184956
                                              __tmp184934
                                              __tmp184926))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp184957
                                       __tmp184925))))
                               (declare (not safe))
                               (cons __tmp184924 '()))))
                        (declare (not safe))
                        (cons __tmp184958 __tmp184923))))
                 (declare (not safe))
                 (cons __tmp184922 '())))
              (__tmp184919
               (let ((__tmp184920
                      (let ()
                        (declare (not safe))
                        (cons _$target179318_ _linit179340_))))
                 (declare (not safe))
                 (cons _$lp179324_ __tmp184920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp184921
                                                   __tmp184919)))))
                                      (let ((_body179345_
                                             (let ((__tmp184960
                                                    (let ((__tmp184961
                                                           (let ((__tmp184964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184965
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl179322_ '()))))
                            (declare (not safe))
                            (cons _$target179318_ __tmp184965)))
                         (__tmp184962
                          (let ((__tmp184963
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target179243_
                                    _rlen179316_))))
                            (declare (not safe))
                            (cons __tmp184963 '()))))
                     (declare (not safe))
                     (cons __tmp184964 __tmp184962))))
              (declare (not safe))
              (cons __tmp184961 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp184959
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179150_
                                                       _tl179313_
                                                       _vars179242_
                                                       _$tl179322_
                                                       _E179244_
                                                       _make-loop179343_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp184960
                                                __tmp184959))))
                                        (let ((__tmp184969
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target179243_)))
                                              (__tmp184966
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen179316_))
                                                   _body179345_
                                                   (let ((__tmp184967
                                                          (let ((__tmp184968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target179243_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp184968 _rlen179316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp184967
                                                      _body179345_
                                                      _E179244_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp184969
                                           __tmp184966
                                           _E179244_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body179299179306_))
                              (let ((_hd179303179364_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body179299179306_)))
                                    (_tl179304179366_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body179299179306_))))
                                (let* ((_hd179369_ _hd179303179364_)
                                       (_tl179371_ _tl179304179366_))
                                  (declare (not safe))
                                  (_K179302179361_ _tl179371_ _hd179369_)))
                              (let () (declare (not safe)) (_E179301179310_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e179263_))
                            (let ((__tmp184918
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target179243_)))
                                  (__tmp184917 (_k179245_ _vars179242_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp184918
                               __tmp184917
                               _E179244_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e179263_))
                                (let ((_$e179373_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp184916
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target179243_)))
                                        (__tmp184908
                                         (let ((__tmp184910
                                                (let ((__tmp184911
                                                       (let ((__tmp184915
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e179373_ '())))
                     (__tmp184912
                      (let ((__tmp184913
                             (let ((__tmp184914
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e178972_
                                       _target179243_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp184914))))
                        (declare (not safe))
                        (cons __tmp184913 '()))))
                 (declare (not safe))
                 (cons __tmp184915 __tmp184912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp184911 '())))
                                               (__tmp184909
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur179150_
                                                   _body179260_
                                                   _vars179242_
                                                   _$e179373_
                                                   _E179244_
                                                   _k179245_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp184910
                                            __tmp184909))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp184916
                                     __tmp184908
                                     _E179244_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e179263_))
                                    (let ((_$e179375_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp184907
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target179243_)))
                                            (__tmp184899
                                             (let ((__tmp184901
                                                    (let ((__tmp184902
                                                           (let ((__tmp184906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e179375_ '())))
                         (__tmp184903
                          (let ((__tmp184904
                                 (let ((__tmp184905
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e178972_
                                           _target179243_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp184905))))
                            (declare (not safe))
                            (cons __tmp184904 '()))))
                     (declare (not safe))
                     (cons __tmp184906 __tmp184903))))
              (declare (not safe))
              (cons __tmp184902 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp184900
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179150_
                                                       _body179260_
                                                       _vars179242_
                                                       _$e179375_
                                                       _E179244_
                                                       _k179245_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp184901
                                                __tmp184900))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp184907
                                         __tmp184899
                                         _E179244_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e179263_))
                                        (let ((_$e179377_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp184898
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target179243_)))
                                                (__tmp184889
                                                 (let ((__tmp184893
                                                        (let ((__tmp184894
                                                               (let ((__tmp184897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e179377_ '())))
                             (__tmp184895
                              (let ((__tmp184896
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target179243_))))
                                (declare (not safe))
                                (cons __tmp184896 '()))))
                         (declare (not safe))
                         (cons __tmp184897 __tmp184895))))
                  (declare (not safe))
                  (cons __tmp184894 '())))
               (__tmp184890
                (let ((__tmp184892
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e179377_ _body179260_)))
                      (__tmp184891 (_k179245_ _vars179242_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp184892 __tmp184891 _E179244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp184893
                                                    __tmp184890))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp184898
                                             __tmp184889
                                             _E179244_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG179149_ _e179241_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e179246179253_))
                                      (let ((_hd179250179382_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179246179253_)))
                                            (_tl179251179384_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179246179253_))))
                                        (let* ((_tag179387_ _hd179250179382_)
                                               (_body179389_ _tl179251179384_))
                                          (declare (not safe))
                                          (_K179249179379_
                                           _body179389_
                                           _tag179387_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179248179257_))))))
                             (_splice-rlen179151_
                              (lambda (_e179203_)
                                (let _lp179205_ ((_e179207_ _e179203_)
                                                 (_n179208_ '0))
                                  (let* ((_e179209179216_ _e179207_)
                                         (_E179211179220_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179209179216_)))
                                         (_K179212179229_
                                          (lambda (_body179223_ _tag179224_)
                                            (let ((_$e179226_ _tag179224_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e179226_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx178970_
                                                     _where179142_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e179226_))
                                                      (let ((__tmp184997
                                                             (cdr _body179223_))
                                                            (__tmp184996
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n179208_ '1))))
                (declare (not safe))
                (_lp179205_ __tmp184997 __tmp184996))
              _n179208_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179209179216_))
                                        (let ((_hd179213179232_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179209179216_)))
                                              (_tl179214179234_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179209179216_))))
                                          (let* ((_tag179237_ _hd179213179232_)
                                                 (_body179239_
                                                  _tl179214179234_))
                                            (declare (not safe))
                                            (_K179212179229_
                                             _body179239_
                                             _tag179237_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179211179220_)))))))
                             (_splice-vars179152_
                              (lambda (_e179159_)
                                (let _recur179161_ ((_e179163_ _e179159_)
                                                    (_vars179164_ '()))
                                  (let* ((_e179165179172_ _e179163_)
                                         (_E179167179176_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179165179172_)))
                                         (_K179168179191_
                                          (lambda (_body179179_ _tag179180_)
                                            (let ((_$e179182_ _tag179180_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e179182_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body179179_
                                                          _vars179164_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e179182_))
                  (let () (declare (not safe)) (eq? 'splice _$e179182_)))
              (let ((__tmp185000 (cdr _body179179_))
                    (__tmp184998
                     (let ((__tmp184999 (car _body179179_)))
                       (declare (not safe))
                       (_recur179161_ __tmp184999 _vars179164_))))
                (declare (not safe))
                (_recur179161_ __tmp185000 __tmp184998))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e179182_))
                      (let () (declare (not safe)) (eq? 'box _$e179182_)))
                  (let ()
                    (declare (not safe))
                    (_recur179161_ _body179179_ _vars179164_))
                  _vars179164_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179165179172_))
                                        (let ((_hd179169179194_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179165179172_)))
                                              (_tl179170179196_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179165179172_))))
                                          (let* ((_tag179199_ _hd179169179194_)
                                                 (_body179201_
                                                  _tl179170179196_))
                                            (declare (not safe))
                                            (_K179168179191_
                                             _body179201_
                                             _tag179199_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179167179176_)))))))
                             (_make-body179153_
                              (lambda (_vars179155_)
                                (let ((__tmp185001
                                       (map (lambda (_mvar179157_)
                                              (let ((__tmp185002
                                                     (car _mvar179157_)))
                                                (declare (not safe))
                                                (assgetq __tmp185002
                                                         _vars179155_
                                                         _BUG179149_)))
                                            _mvars179145_)))
                                  (declare (not safe))
                                  (cons _K179146_ __tmp185001)))))
                      (let ()
                        (declare (not safe))
                        (_recur179150_
                         _hd179144_
                         '()
                         _target179143_
                         _E179147_
                         _make-body179153_)))))
                 (_parse-clause178979_
                  (lambda (_hd179048_ _ids179049_)
                    (let _recur179051_ ((_e179053_ _hd179048_)
                                        (_vars179054_ '())
                                        (_depth179055_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e179053_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e179053_))
                              (values '(any) _vars179054_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e179053_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx178970_
                                     _hd179048_))
                                  (if (let ((__tmp185018
                                             (lambda (_id179057_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e179053_
                                                  _id179057_)))))
                                        (declare (not safe))
                                        (find __tmp185018 _ids179049_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e179053_))
                                              _vars179054_)
                                      (if (let ((__tmp185016
                                                 (lambda (_var179059_)
                                                   (let ((__tmp185017
                                                          (car _var179059_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e179053_
                                                      __tmp185017)))))
                                            (declare (not safe))
                                            (find __tmp185016 _vars179054_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx178970_
                                             _e179053_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e179053_))
                                                  (let ((__tmp185015
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e179053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth179055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185015
                                                          _vars179054_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e179053_))
                              (let* ((_e179060179067_ _e179053_)
                                     (_E179062179071_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e179060179067_))))
                                     (_E179061179132_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e179060179067_))
                                            (let ((_e179063179075_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e179060179067_))))
                                              (let ((_hd179064179078_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e179063179075_)))
                                                    (_tl179065179080_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e179063179075_))))
                                                (let* ((_hd179083_
                                                        _hd179064179078_)
                                                       (_rest179085_
                                                        _tl179065179080_))
                                                  (if '#t
                                                      (let* ((_make-pair179100_
                                                              (lambda (_tag179087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd179088_
                               _tl179089_)
                        (let* ((_hd-depth179091_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag179087_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth179055_ '1))
                                    _depth179055_))
                               (_g185010_
                                (let ()
                                  (declare (not safe))
                                  (_recur179051_
                                   _hd179088_
                                   _vars179054_
                                   _hd-depth179091_))))
                          (begin
                            (let ((_g185011_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g185010_)
                                         (##vector-length _g185010_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g185011_ 2)))
                                  (error "Context expects 2 values"
                                         _g185011_)))
                            (let ((_hd179093_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185010_ 0)))
                                  (_vars179094_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185010_ 1))))
                              (let ((_g185012_
                                     (let ()
                                       (declare (not safe))
                                       (_recur179051_
                                        _tl179089_
                                        _vars179094_
                                        _depth179055_))))
                                (begin
                                  (let ((_g185013_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g185012_)
                                               (##vector-length _g185012_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g185013_ 2)))
                                        (error "Context expects 2 values"
                                               _g185013_)))
                                  (let ((_tl179096_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185012_ 0)))
                                        (_vars179097_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185012_ 1))))
                                    (let ()
                                      (values (let ((__tmp185014
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd179093_
                                                             _tl179096_))))
                                                (declare (not safe))
                                                (cons _tag179087_ __tmp185014))
                                              _vars179097_))))))))))
                     (_e179101179108_ _rest179085_)
                     (_E179103179112_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair179100_ 'cons _hd179083_ _rest179085_))))
                     (_E179102179128_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e179101179108_))
                            (let ((_e179104179116_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e179101179108_))))
                              (let ((_hd179105179119_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e179104179116_)))
                                    (_tl179106179121_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e179104179116_))))
                                (let* ((_rest-hd179124_ _hd179105179119_)
                                       (_rest-tl179126_ _tl179106179121_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd179124_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179100_
                                             'splice
                                             _hd179083_
                                             _rest-tl179126_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179100_
                                             'cons
                                             _hd179083_
                                             _rest179085_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179103179112_))))))
                            (let () (declare (not safe)) (_E179103179112_))))))
                (let () (declare (not safe)) (_E179102179128_)))
              (let () (declare (not safe)) (_E179062179071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E179062179071_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179061179132_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e179053_))
                                  (values '(null) _vars179054_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e179053_))
                                      (let ((_g185007_
                                             (let ((__tmp185009
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e179053_)))))
                                               (declare (not safe))
                                               (_recur179051_
                                                __tmp185009
                                                _vars179054_
                                                _depth179055_))))
                                        (begin
                                          (let ((_g185008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g185007_)
                                                       (##vector-length
                                                        _g185007_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g185008_ 2)))
                                                (error "Context expects 2 values"
                                                       _g185008_)))
                                          (let ((_e179136_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g185007_ 0)))
                                                (_vars179137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g185007_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e179136_))
                                                    _vars179137_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e179053_))
                                          (let ((_g185004_
                                                 (let ((__tmp185006
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e179053_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur179051_
                                                    __tmp185006
                                                    _vars179054_
                                                    _depth179055_))))
                                            (begin
                                              (let ((_g185005_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g185004_)
                                                           (##vector-length
                                                            _g185004_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g185005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g185005_)))
                                              (let ((_e179139_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g185004_
                                                        0)))
                                                    (_vars179140_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g185004_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e179139_))
                                                        _vars179140_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e179053_))
                                              (values (let ((__tmp185003
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e179053_))))
                (declare (not safe))
                (cons 'datum __tmp185003))
              _vars179054_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx178970_
                                                 _e179053_))))))))))))
          (let* ((_e178980178993_ _stx178970_)
                 (_E178982178997_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e178980178993_))))
                 (_E178981179044_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e178980178993_))
                        (let ((_e178983179001_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e178980178993_))))
                          (let ((_hd178984179004_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e178983179001_)))
                                (_tl178985179006_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e178983179001_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl178985179006_))
                                (let ((_e178986179009_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl178985179006_))))
                                  (let ((_hd178987179012_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e178986179009_)))
                                        (_tl178988179014_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e178986179009_))))
                                    (let ((_expr179017_ _hd178987179012_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl178988179014_))
                                          (let ((_e178989179019_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl178988179014_))))
                                            (let ((_hd178990179022_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e178989179019_)))
                                                  (_tl178991179024_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e178989179019_))))
                                              (let* ((_ids179027_
                                                      _hd178990179022_)
                                                     (_clauses179029_
                                                      _tl178991179024_))
                                                (if '#t
                                                    (if (let ((__tmp185036
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids179027_))))
                  (declare (not safe))
                  (not __tmp185036))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx178970_
                   _ids179027_))
                (if (let ((__tmp185035
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses179029_))))
                      (declare (not safe))
                      (not __tmp185035))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx178970_))
                    (let* ((_ids179031_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids179027_)))
                           (_clauses179033_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses179029_)))
                           (_clause-ids179035_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses179033_)))
                           (_E179037_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target179039_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first179041_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses179033_))
                                _E179037_
                                (car _clause-ids179035_))))
                      (let ((__tmp185020
                             (let ((__tmp185021
                                    (let ((__tmp185023
                                           (let ((__tmp185028
                                                  (let ((__tmp185029
                                                         (let ((__tmp185034
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E179037_ '())))
                       (__tmp185030
                        (let ((__tmp185031
                               (let ((__tmp185033
                                      (let ()
                                        (declare (not safe))
                                        (cons _target179039_ '())))
                                     (__tmp185032
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target179039_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp185033
                                  __tmp185032))))
                          (declare (not safe))
                          (cons __tmp185031 '()))))
                   (declare (not safe))
                   (cons __tmp185034 __tmp185030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185029 '())))
                                                 (__tmp185024
                                                  (let ((__tmp185027
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings178975_
                                                            _target179039_
                                                            _ids179031_
                                                            _clauses179033_
                                                            _clause-ids179035_
                                                            _E179037_)))
                                                        (__tmp185025
                                                         (let ((__tmp185026
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr179017_ '()))))
                   (declare (not safe))
                   (cons _first179041_ __tmp185026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body178976_
                                                     __tmp185027
                                                     __tmp185025))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp185028
                                              __tmp185024)))
                                          (__tmp185022
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx178970_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp185023
                                       __tmp185022))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp185021)))
                            (__tmp185019
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx178970_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp185020 __tmp185019)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E178982178997_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E178982178997_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E178982178997_)))))
                        (let () (declare (not safe)) (_E178982178997_))))))
            (let () (declare (not safe)) (_E178981179044_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx179680_)
        (let* ((_identifier=?179682_ 'free-identifier=?)
               (_unwrap-e179684_ 'syntax-e)
               (_wrap-e179686_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179680_
           _identifier=?179682_
           _unwrap-e179684_
           _wrap-e179686_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx179688_ _identifier=?179689_)
        (let* ((_unwrap-e179691_ 'syntax-e) (_wrap-e179693_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179688_
           _identifier=?179689_
           _unwrap-e179691_
           _wrap-e179693_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx179695_ _identifier=?179696_ _unwrap-e179697_)
        (let ((_wrap-e179699_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179695_
           _identifier=?179696_
           _unwrap-e179697_
           _wrap-e179699_))))
    (define gx#macro-expand-syntax-case
      (lambda _g185038_
        (let ((_g185037_ (let () (declare (not safe)) (##length _g185038_))))
          (cond ((let () (declare (not safe)) (##fx= _g185037_ 1))
                 (apply (lambda (_stx179680_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx179680_)))
                        _g185038_))
                ((let () (declare (not safe)) (##fx= _g185037_ 2))
                 (apply (lambda (_stx179688_ _identifier=?179689_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx179688_
                             _identifier=?179689_)))
                        _g185038_))
                ((let () (declare (not safe)) (##fx= _g185037_ 3))
                 (apply (lambda (_stx179695_
                                 _identifier=?179696_
                                 _unwrap-e179697_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx179695_
                             _identifier=?179696_
                             _unwrap-e179697_)))
                        _g185038_))
                ((let () (declare (not safe)) (##fx= _g185037_ 4))
                 (apply (lambda (_stx179701_
                                 _identifier=?179702_
                                 _unwrap-e179703_
                                 _wrap-e179704_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx179701_
                             _identifier=?179702_
                             _unwrap-e179703_
                             _wrap-e179704_)))
                        _g185038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g185038_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx178967_)
        (if (let () (declare (not safe)) (gx#identifier? _stx178967_))
            (let ((__tmp185039
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx178967_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp185039 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd178925_ . _rest178926_)
        (let ((_len178928_ (length _hd178925_)))
          (let _lp178930_ ((_rest178932_ _rest178926_))
            (let* ((_rest178933178941_ _rest178932_)
                   (_else178935178949_ (lambda () '#!void))
                   (_K178937178955_
                    (lambda (_rest178952_ _hd178953_)
                      (if (fx= _len178928_ (length _hd178953_))
                          (let ()
                            (declare (not safe))
                            (_lp178930_ _rest178952_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd178953_))))))
              (if (let () (declare (not safe)) (##pair? _rest178933178941_))
                  (let ((_hd178938178958_
                         (let ()
                           (declare (not safe))
                           (##car _rest178933178941_)))
                        (_tl178939178960_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest178933178941_))))
                    (let* ((_hd178963_ _hd178938178958_)
                           (_rest178965_ _tl178939178960_))
                      (declare (not safe))
                      (_K178937178955_ _rest178965_ _hd178963_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx178883_ _n178884_)
        (let _lp178886_ ((_rest178888_ _stx178883_) (_r178889_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest178888_))
              (let* ((_g178890178897_
                      (let () (declare (not safe)) (gx#syntax-e _rest178888_)))
                     (_E178892178901_
                      (lambda ()
                        (error '"No clause matching" _g178890178897_)))
                     (_K178893178907_
                      (lambda (_rest178904_ _hd178905_)
                        (let ((__tmp185044
                               (let ()
                                 (declare (not safe))
                                 (cons _hd178905_ _r178889_))))
                          (declare (not safe))
                          (_lp178886_ _rest178904_ __tmp185044)))))
                (if (let () (declare (not safe)) (##pair? _g178890178897_))
                    (let ((_hd178894178910_
                           (let ()
                             (declare (not safe))
                             (##car _g178890178897_)))
                          (_tl178895178912_
                           (let ()
                             (declare (not safe))
                             (##cdr _g178890178897_))))
                      (let* ((_hd178915_ _hd178894178910_)
                             (_rest178917_ _tl178895178912_))
                        (declare (not safe))
                        (_K178893178907_ _rest178917_ _hd178915_)))
                    (let () (declare (not safe)) (_E178892178901_))))
              (let _lp178919_ ((_n178921_ _n178884_)
                               (_l178922_ _r178889_)
                               (_r178923_ _rest178888_))
                (if (let () (declare (not safe)) (null? _l178922_))
                    (values _l178922_ _r178923_)
                    (if (fxpositive? _n178921_)
                        (let ((__tmp185043
                               (let ()
                                 (declare (not safe))
                                 (fx- _n178921_ '1)))
                              (__tmp185042 (cdr _l178922_))
                              (__tmp185040
                               (let ((__tmp185041 (car _l178922_)))
                                 (declare (not safe))
                                 (cons __tmp185041 _r178923_))))
                          (declare (not safe))
                          (_lp178919_ __tmp185043 __tmp185042 __tmp185040))
                        (values (reverse _l178922_) _r178923_))))))))))
