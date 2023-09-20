(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-ann::timestamp 1695199295)
  (begin
    (declare (inlining-limit 200))
    (define gxc#&optmize-annotated
      (make-promise
       (lambda ()
         (let ((_tbl53705_ (make-table 'test: eq?)))
           (hash-copy! _tbl53705_ (force gxc#&basic-xform))
           (table-set! _tbl53705_ '%#begin-annotation gxc#optimize-annotation%)
           _tbl53705_))))
    (define gxc#apply-optimize-annotated
      (lambda (_stx53698_ . _args53700_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx53698_ _args53700_))
         gxc#current-compile-methods
         (force gxc#&optmize-annotated))))
    (define gxc#&generate-runtime-repr
      (make-promise
       (lambda ()
         (let ((_tbl53695_ (make-table 'test: eq?)))
           (hash-copy! _tbl53695_ (force gxc#&generate-runtime))
           (table-set! _tbl53695_ '%#quote-syntax identity)
           _tbl53695_))))
    (define gxc#apply-generate-runtime-repr
      (lambda (_stx53688_ . _args53690_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx53688_ _args53690_))
         gxc#current-compile-methods
         (force gxc#&generate-runtime-repr))))
    (define gxc#&push-match-vars
      (make-promise
       (lambda ()
         (let ((_tbl53685_ (make-table 'test: eq?)))
           (table-set! _tbl53685_ '%#lambda gxc#xform-lambda%)
           (table-set!
            _tbl53685_
            '%#let-values
            gxc#push-match-vars-let-values%)
           (table-set! _tbl53685_ '%#letrec-values gxc#push-match-vars-stop)
           (table-set! _tbl53685_ '%#if gxc#push-match-vars-if%)
           (table-set! _tbl53685_ '%#call gxc#push-match-vars-call%)
           _tbl53685_))))
    (define gxc#apply-push-match-vars
      (lambda (_stx53678_ . _args53680_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx53678_ _args53680_))
         gxc#current-compile-methods
         (force gxc#&push-match-vars))))
    (define gxc#current-annotation-optimizer (make-parameter '()))
    (define gxc#optimize-annotation%
      (lambda (_stx53596_)
        (let* ((___stx5372153722_ _stx53596_)
               (_g5359953616_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx5372153722_))))
          (let ((___kont5372353724_
                 (lambda (_L53652_ _L53653_)
                   (let ((_ann53669_ (gx#stx-e _L53653_)))
                     (call-with-parameters
                      (lambda ()
                        (let ((_$e53672_ _ann53669_))
                          (if (eq? '@match _$e53672_)
                              (begin
                                (gxc#verbose '"Optimizing match expansion")
                                (gxc#optimize-match _L53652_))
                              (if (eq? '@syntax-case _$e53672_)
                                  (begin
                                    (gxc#verbose
                                     '"Optimizing syntax-case expansion")
                                    (gxc#optimize-syntax-case _L53652_))
                                  (gxc#compile-e _L53652_)))))
                      gxc#current-annotation-optimizer
                      (cons _ann53669_ (gxc#current-annotation-optimizer))))))
                (___kont5372553726_
                 (lambda () (gxc#xform-begin-annotation% _stx53596_))))
            (let ((___match5374653747_
                   (lambda (_e5360353628_
                            _hd5360453631_
                            _tl5360553633_
                            _e5360653636_
                            _hd5360753639_
                            _tl5360853641_
                            _e5360953644_
                            _hd5361053647_
                            _tl5361153649_)
                     (let ((_L53652_ _hd5361053647_) (_L53653_ _hd5360753639_))
                       (if (gx#identifier? _L53653_)
                           (___kont5372353724_ _L53652_ _L53653_)
                           (___kont5372553726_))))))
              (if (gx#stx-pair? ___stx5372153722_)
                  (let ((_e5360353628_ (gx#stx-e ___stx5372153722_)))
                    (let ((_tl5360553633_
                           (let () (declare (not safe)) (##cdr _e5360353628_)))
                          (_hd5360453631_
                           (let ()
                             (declare (not safe))
                             (##car _e5360353628_))))
                      (if (gx#stx-pair? _tl5360553633_)
                          (let ((_e5360653636_ (gx#stx-e _tl5360553633_)))
                            (let ((_tl5360853641_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5360653636_)))
                                  (_hd5360753639_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5360653636_))))
                              (if (gx#stx-pair? _tl5360853641_)
                                  (let ((_e5360953644_
                                         (gx#stx-e _tl5360853641_)))
                                    (let ((_tl5361153649_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e5360953644_)))
                                          (_hd5361053647_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e5360953644_))))
                                      (if (gx#stx-null? _tl5361153649_)
                                          (___match5374653747_
                                           _e5360353628_
                                           _hd5360453631_
                                           _tl5360553633_
                                           _e5360653636_
                                           _hd5360753639_
                                           _tl5360853641_
                                           _e5360953644_
                                           _hd5361053647_
                                           _tl5361153649_)
                                          (___kont5372553726_))))
                                  (___kont5372553726_))))
                          (___kont5372553726_))))
                  (___kont5372553726_)))))))
    (define gxc#optimize-match
      (lambda (_stx52895_)
        (let* ((_g5289752927_
                (lambda (_g5289852924_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g5289852924_)))
               (_g5289653593_
                (lambda (_g5289852930_)
                  (if (gx#stx-pair? _g5289852930_)
                      (let ((_e5290252932_ (gx#stx-e _g5289852930_)))
                        (let ((_hd5290352935_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5290252932_)))
                              (_tl5290452937_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5290252932_))))
                          (if (gx#identifier? _hd5290352935_)
                              (if (gx#stx-eq? '%#let-values _hd5290352935_)
                                  (if (gx#stx-pair? _tl5290452937_)
                                      (let ((_e5290552940_
                                             (gx#stx-e _tl5290452937_)))
                                        (let ((_hd5290652943_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5290552940_)))
                                              (_tl5290752945_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5290552940_))))
                                          (if (gx#stx-pair? _hd5290652943_)
                                              (let ((_e5290852948_
                                                     (gx#stx-e
                                                      _hd5290652943_)))
                                                (let ((_hd5290952951_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5290852948_)))
                                                      (_tl5291052953_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5290852948_))))
                                                  (if (gx#stx-pair?
                                                       _hd5290952951_)
                                                      (let ((_e5291152956_
                                                             (gx#stx-e
                                                              _hd5290952951_)))
                                                        (let ((_hd5291252959_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e5291152956_)))
                      (_tl5291352961_
                       (let () (declare (not safe)) (##cdr _e5291152956_))))
                  (if (gx#stx-pair? _hd5291252959_)
                      (let ((_e5291452964_ (gx#stx-e _hd5291252959_)))
                        (let ((_hd5291552967_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5291452964_)))
                              (_tl5291652969_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5291452964_))))
                          (if (gx#stx-null? _tl5291652969_)
                              (if (gx#stx-pair? _tl5291352961_)
                                  (let ((_e5291752972_
                                         (gx#stx-e _tl5291352961_)))
                                    (let ((_hd5291852975_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e5291752972_)))
                                          (_tl5291952977_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e5291752972_))))
                                      (if (gx#stx-null? _tl5291952977_)
                                          (if (gx#stx-null? _tl5291052953_)
                                              (if (gx#stx-pair? _tl5290752945_)
                                                  (let ((_e5292052980_
                                                         (gx#stx-e
                                                          _tl5290752945_)))
                                                    (let ((_hd5292152983_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5292052980_)))
                                                          (_tl5292252985_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5292052980_))))
                                                      (if (gx#stx-null?
                                                           _tl5292252985_)
                                                          ((lambda (_L52988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L52989_
                            _L52990_)
                     (let _lp53014_ ((_body53016_ _L52988_)
                                     (_negation53017_ (cons _L52990_ _L52989_))
                                     (_clauses53018_ '())
                                     (_konts53019_ '()))
                       (let* ((___stx5392953930_ _body53016_)
                              (_g5302253062_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  ___stx5392953930_))))
                         (let ((___kont5393153932_
                                (lambda (_L53392_)
                                  (let* ((___stx5386553866_ _L53392_)
                                         (_g5340653436_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx5386553866_))))
                                    (let ((___kont5386753868_
                                           (lambda (_L53532_ _L53533_ _L53534_)
                                             (if (null? _clauses53018_)
                                                 (let* ((_negation5355853565_
                                                         _negation53017_)
                                                        (_E5356053569_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _negation5355853565_)))
                (_K5356153575_
                 (lambda (_negate53572_ _E53573_)
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _E53573_ '())
                                            (cons _negate53572_ '()))
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _L53534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gxc#compile-e _L53533_) '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L53532_ '())))
                                      '())))
                    _stx52895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##pair? _negation5355853565_))
                                                       (let ((_hd5356253578_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _negation5355853565_)))
                     (_tl5356353580_
                      (let ()
                        (declare (not safe))
                        (##cdr _negation5355853565_))))
                 (let* ((_E53583_ _hd5356253578_)
                        (_negate53585_ _tl5356353580_))
                   (_K5356153575_ _negate53585_ _E53583_)))
               (_E5356053569_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#optimize-match-body
                                                  _stx52895_
                                                  _negation53017_
                                                  (cons (cons '#f
                                                              (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '%#lambda)
                            (cons '() (cons _L53532_ '()))))
                _clauses53018_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons _L53534_
                                                              (gxc#compile-e
                                                               _L53533_))
                                                        _konts53019_)))))
                                          (___kont5386953870_
                                           (lambda ()
                                             (let* ((_negation5344253449_
                                                     _negation53017_)
                                                    (_E5344453453_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _negation5344253449_)))
                                                    (_K5344553459_
                                                     (lambda (_negate53456_
                                                              _E53457_)
                                                       (gxc#xform-wrap-source
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _E53457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _negate53456_ '()))
                                  '())
                            (cons _L53392_ '())))
                _stx52895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _negation5344253449_))
                                                   (let ((_hd5344653462_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _negation5344253449_)))
                                                         (_tl5344753464_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _negation5344253449_))))
                                                     (let* ((_E53467_
                                                             _hd5344653462_)
                                                            (_negate53469_
                                                             _tl5344753464_))
                                                       (_K5344553459_
                                                        _negate53469_
                                                        _E53467_)))
                                                   (_E5344453453_))))))
                                      (let ((_g5340553471_
                                             (lambda ()
                                               (if (null? _clauses53018_)
                                                   (___kont5386953870_)
                                                   (_g5340653436_)))))
                                        (if (gx#stx-pair? ___stx5386553866_)
                                            (let ((_e5341153476_
                                                   (gx#stx-e
                                                    ___stx5386553866_)))
                                              (let ((_tl5341353481_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5341153476_)))
                                                    (_hd5341253479_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5341153476_))))
                                                (if (gx#identifier?
                                                     _hd5341253479_)
                                                    (if (gx#stx-eq?
                                                         '%#let-values
                                                         _hd5341253479_)
                                                        (if (gx#stx-pair?
                                                             _tl5341353481_)
                                                            (let ((_e5341453484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl5341353481_)))
                      (let ((_tl5341653489_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5341453484_)))
                            (_hd5341553487_
                             (let ()
                               (declare (not safe))
                               (##car _e5341453484_))))
                        (if (gx#stx-pair? _hd5341553487_)
                            (let ((_e5341753492_ (gx#stx-e _hd5341553487_)))
                              (let ((_tl5341953497_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5341753492_)))
                                    (_hd5341853495_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5341753492_))))
                                (if (gx#stx-pair? _hd5341853495_)
                                    (let ((_e5342053500_
                                           (gx#stx-e _hd5341853495_)))
                                      (let ((_tl5342253505_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5342053500_)))
                                            (_hd5342153503_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5342053500_))))
                                        (if (gx#stx-pair? _hd5342153503_)
                                            (let ((_e5342353508_
                                                   (gx#stx-e _hd5342153503_)))
                                              (let ((_tl5342553513_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5342353508_)))
                                                    (_hd5342453511_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5342353508_))))
                                                (if (gx#stx-null?
                                                     _tl5342553513_)
                                                    (if (gx#stx-pair?
                                                         _tl5342253505_)
                                                        (let ((_e5342653516_
                                                               (gx#stx-e
                                                                _tl5342253505_)))
                                                          (let ((_tl5342853521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5342653516_)))
                        (_hd5342753519_
                         (let () (declare (not safe)) (##car _e5342653516_))))
                    (if (gx#stx-null? _tl5342853521_)
                        (if (gx#stx-null? _tl5341953497_)
                            (if (gx#stx-pair? _tl5341653489_)
                                (let ((_e5342953524_
                                       (gx#stx-e _tl5341653489_)))
                                  (let ((_tl5343153529_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5342953524_)))
                                        (_hd5343053527_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5342953524_))))
                                    (if (gx#stx-null? _tl5343153529_)
                                        (___kont5386753868_
                                         _hd5343053527_
                                         _hd5342753519_
                                         _hd5342453511_)
                                        (_g5340553471_))))
                                (_g5340553471_))
                            (_g5340553471_))
                        (_g5340553471_))))
                (_g5340553471_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5340553471_))))
                                            (_g5340553471_))))
                                    (_g5340553471_))))
                            (_g5340553471_))))
                    (_g5340553471_))
                (_g5340553471_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5340553471_))))
                                            (_g5340553471_)))))))
                               (___kont5393353934_
                                (lambda (_L53123_ _L53124_ _L53125_)
                                  (let* ((___stx5374953750_ _L53124_)
                                         (_g5315253201_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx5374953750_))))
                                    (let ((___kont5375153752_
                                           (lambda (_L53329_ _L53330_ _L53331_)
                                             (_lp53014_
                                              _L53123_
                                              _negation53017_
                                              (cons (cons _L53125_
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#lambda)
                        (cons '() (cons _L53329_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _clauses53018_)
                                              (cons (cons _L53331_
                                                          (gxc#compile-e
                                                           _L53330_))
                                                    _konts53019_))))
                                          (___kont5375353754_
                                           (lambda (_L53230_)
                                             (_lp53014_
                                              _L53123_
                                              (cons _L53125_
                                                    (gxc#compile-e _L53230_))
                                              _clauses53018_
                                              _konts53019_))))
                                      (if (gx#stx-pair? ___stx5374953750_)
                                          (let ((_e5315753249_
                                                 (gx#stx-e ___stx5374953750_)))
                                            (let ((_tl5315953254_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e5315753249_)))
                                                  (_hd5315853252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e5315753249_))))
                                              (if (gx#identifier?
                                                   _hd5315853252_)
                                                  (if (gx#stx-eq?
                                                       '%#lambda
                                                       _hd5315853252_)
                                                      (if (gx#stx-pair?
                                                           _tl5315953254_)
                                                          (let ((_e5316053257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl5315953254_)))
                    (let ((_tl5316253262_
                           (let () (declare (not safe)) (##cdr _e5316053257_)))
                          (_hd5316153260_
                           (let ()
                             (declare (not safe))
                             (##car _e5316053257_))))
                      (if (gx#stx-null? _hd5316153260_)
                          (if (gx#stx-pair? _tl5316253262_)
                              (let ((_e5316353265_ (gx#stx-e _tl5316253262_)))
                                (let ((_tl5316553270_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5316353265_)))
                                      (_hd5316453268_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5316353265_))))
                                  (if (gx#stx-pair? _hd5316453268_)
                                      (let ((_e5316653273_
                                             (gx#stx-e _hd5316453268_)))
                                        (let ((_tl5316853278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5316653273_)))
                                              (_hd5316753276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5316653273_))))
                                          (if (gx#identifier? _hd5316753276_)
                                              (if (gx#stx-eq?
                                                   '%#let-values
                                                   _hd5316753276_)
                                                  (if (gx#stx-pair?
                                                       _tl5316853278_)
                                                      (let ((_e5316953281_
                                                             (gx#stx-e
                                                              _tl5316853278_)))
                                                        (let ((_tl5317153286_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5316953281_)))
                      (_hd5317053284_
                       (let () (declare (not safe)) (##car _e5316953281_))))
                  (if (gx#stx-pair? _hd5317053284_)
                      (let ((_e5317253289_ (gx#stx-e _hd5317053284_)))
                        (let ((_tl5317453294_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5317253289_)))
                              (_hd5317353292_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5317253289_))))
                          (if (gx#stx-pair? _hd5317353292_)
                              (let ((_e5317553297_ (gx#stx-e _hd5317353292_)))
                                (let ((_tl5317753302_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5317553297_)))
                                      (_hd5317653300_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5317553297_))))
                                  (if (gx#stx-pair? _hd5317653300_)
                                      (let ((_e5317853305_
                                             (gx#stx-e _hd5317653300_)))
                                        (let ((_tl5318053310_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5317853305_)))
                                              (_hd5317953308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5317853305_))))
                                          (if (gx#stx-null? _tl5318053310_)
                                              (if (gx#stx-pair? _tl5317753302_)
                                                  (let ((_e5318153313_
                                                         (gx#stx-e
                                                          _tl5317753302_)))
                                                    (let ((_tl5318353318_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5318153313_)))
                                                          (_hd5318253316_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5318153313_))))
                                                      (if (gx#stx-null?
                                                           _tl5318353318_)
                                                          (if (gx#stx-null?
                                                               _tl5317453294_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl5317153286_)
                          (let ((_e5318453321_ (gx#stx-e _tl5317153286_)))
                            (let ((_tl5318653326_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5318453321_)))
                                  (_hd5318553324_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5318453321_))))
                              (if (gx#stx-null? _tl5318653326_)
                                  (if (gx#stx-null? _tl5316553270_)
                                      (___kont5375153752_
                                       _hd5318553324_
                                       _hd5318253316_
                                       _hd5317953308_)
                                      (_g5315253201_))
                                  (_g5315253201_))))
                          (_g5315253201_))
                      (_g5315253201_))
                  (_g5315253201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5315253201_))
                                              (_g5315253201_))))
                                      (_g5315253201_))))
                              (_g5315253201_))))
                      (_g5315253201_))))
              (_g5315253201_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5315253201_))
                                              (_g5315253201_))))
                                      (_g5315253201_))))
                              (_g5315253201_))
                          (_g5315253201_))))
                  (_g5315253201_))
              (if (gx#stx-eq? '%#begin-annotation _hd5315853252_)
                  (if (gx#stx-pair? _tl5315953254_)
                      (let ((_e5319153214_ (gx#stx-e _tl5315953254_)))
                        (let ((_tl5319353219_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5319153214_)))
                              (_hd5319253217_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5319153214_))))
                          (if (gx#identifier? _hd5319253217_)
                              (if (gx#stx-eq? '@match-else _hd5319253217_)
                                  (if (gx#stx-pair? _tl5319353219_)
                                      (let ((_e5319453222_
                                             (gx#stx-e _tl5319353219_)))
                                        (let ((_tl5319653227_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5319453222_)))
                                              (_hd5319553225_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5319453222_))))
                                          (if (gx#stx-null? _tl5319653227_)
                                              (___kont5375353754_
                                               _hd5319553225_)
                                              (_g5315253201_))))
                                      (_g5315253201_))
                                  (_g5315253201_))
                              (_g5315253201_))))
                      (_g5315253201_))
                  (_g5315253201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5315253201_))))
                                          (_g5315253201_)))))))
                           (if (gx#stx-pair? ___stx5392953930_)
                               (let ((_e5302553368_
                                      (gx#stx-e ___stx5392953930_)))
                                 (let ((_tl5302753373_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e5302553368_)))
                                       (_hd5302653371_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e5302553368_))))
                                   (if (gx#identifier? _hd5302653371_)
                                       (if (gx#stx-eq?
                                            '%#begin-annotation
                                            _hd5302653371_)
                                           (if (gx#stx-pair? _tl5302753373_)
                                               (let ((_e5302853376_
                                                      (gx#stx-e
                                                       _tl5302753373_)))
                                                 (let ((_tl5303053381_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e5302853376_)))
                                                       (_hd5302953379_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e5302853376_))))
                                                   (if (gx#identifier?
                                                        _hd5302953379_)
                                                       (if (gx#stx-eq?
                                                            '@match-body
                                                            _hd5302953379_)
                                                           (if (gx#stx-pair?
                                                                _tl5303053381_)
                                                               (let ((_e5303153384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl5303053381_)))
                         (let ((_tl5303353389_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e5303153384_)))
                               (_hd5303253387_
                                (let ()
                                  (declare (not safe))
                                  (##car _e5303153384_))))
                           (if (gx#stx-null? _tl5303353389_)
                               (___kont5393153932_ _hd5303253387_)
                               (_g5302253062_))))
                       (_g5302253062_))
                   (_g5302253062_))
               (_g5302253062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g5302253062_))
                                           (if (gx#stx-eq?
                                                '%#let-values
                                                _hd5302653371_)
                                               (if (gx#stx-pair?
                                                    _tl5302753373_)
                                                   (let ((_e5304053075_
                                                          (gx#stx-e
                                                           _tl5302753373_)))
                                                     (let ((_tl5304253080_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e5304053075_)))
                                                           (_hd5304153078_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e5304053075_))))
                                                       (if (gx#stx-pair?
                                                            _hd5304153078_)
                                                           (let ((_e5304353083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd5304153078_)))
                     (let ((_tl5304553088_
                            (let ()
                              (declare (not safe))
                              (##cdr _e5304353083_)))
                           (_hd5304453086_
                            (let ()
                              (declare (not safe))
                              (##car _e5304353083_))))
                       (if (gx#stx-pair? _hd5304453086_)
                           (let ((_e5304653091_ (gx#stx-e _hd5304453086_)))
                             (let ((_tl5304853096_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e5304653091_)))
                                   (_hd5304753094_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e5304653091_))))
                               (if (gx#stx-pair? _hd5304753094_)
                                   (let ((_e5304953099_
                                          (gx#stx-e _hd5304753094_)))
                                     (let ((_tl5305153104_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e5304953099_)))
                                           (_hd5305053102_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e5304953099_))))
                                       (if (gx#stx-null? _tl5305153104_)
                                           (if (gx#stx-pair? _tl5304853096_)
                                               (let ((_e5305253107_
                                                      (gx#stx-e
                                                       _tl5304853096_)))
                                                 (let ((_tl5305453112_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e5305253107_)))
                                                       (_hd5305353110_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e5305253107_))))
                                                   (if (gx#stx-null?
                                                        _tl5305453112_)
                                                       (if (gx#stx-null?
                                                            _tl5304553088_)
                                                           (if (gx#stx-pair?
                                                                _tl5304253080_)
                                                               (let ((_e5305553115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl5304253080_)))
                         (let ((_tl5305753120_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e5305553115_)))
                               (_hd5305653118_
                                (let ()
                                  (declare (not safe))
                                  (##car _e5305553115_))))
                           (if (gx#stx-null? _tl5305753120_)
                               (___kont5393353934_
                                _hd5305653118_
                                _hd5305353110_
                                _hd5305053102_)
                               (_g5302253062_))))
                       (_g5302253062_))
                   (_g5302253062_))
               (_g5302253062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g5302253062_))
                                           (_g5302253062_))))
                                   (_g5302253062_))))
                           (_g5302253062_))))
                   (_g5302253062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g5302253062_))
                                               (_g5302253062_)))
                                       (_g5302253062_))))
                               (_g5302253062_))))))
                   _hd5292152983_
                   _hd5291852975_
                   _hd5291552967_)
                  (_g5289752927_ _g5289852930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5289752927_
                                                   _g5289852930_))
                                              (_g5289752927_ _g5289852930_))
                                          (_g5289752927_ _g5289852930_))))
                                  (_g5289752927_ _g5289852930_))
                              (_g5289752927_ _g5289852930_))))
                      (_g5289752927_ _g5289852930_))))
              (_g5289752927_ _g5289852930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g5289752927_ _g5289852930_))))
                                      (_g5289752927_ _g5289852930_))
                                  (_g5289752927_ _g5289852930_))
                              (_g5289752927_ _g5289852930_))))
                      (_g5289752927_ _g5289852930_)))))
          (_g5289653593_ _stx52895_))))
    (define gxc#optimize-match-body
      (lambda (_stx52601_ _negation52602_ _clauses52603_ _konts52604_)
        (letrec ((_push-variables52606_
                  (lambda (_clause52853_ _kont52854_)
                    (let ((_clause5285552865_ _clause52853_)
                          (_kont5285652867_ _kont52854_))
                      (let* ((_E5285852871_
                              (lambda ()
                                (error '"No clause matching"
                                       _clause5285552865_
                                       _kont5285652867_)))
                             (_K5285952878_
                              (lambda (_clause-lambda52874_
                                       _clause-name52875_
                                       _K52876_)
                                (cons _clause-name52875_
                                      (gxc#apply-push-match-vars
                                       _clause-lambda52874_
                                       '()
                                       _K52876_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _clause5285552865_))
                            (let ((_hd5286252881_
                                   (let ()
                                     (declare (not safe))
                                     (##car _clause5285552865_)))
                                  (_tl5286352883_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _clause5285552865_))))
                              (let* ((_clause-name52886_ _hd5286252881_)
                                     (_clause-lambda52888_ _tl5286352883_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _kont5285652867_))
                                    (let* ((_hd5286052890_
                                            (let ()
                                              (declare (not safe))
                                              (##car _kont5285652867_)))
                                           (_K52893_ _hd5286052890_))
                                      (_K5285952878_
                                       _clause-lambda52888_
                                       _clause-name52886_
                                       _K52893_))
                                    (_E5285852871_))))
                            (_E5285852871_))))))
                 (_start-match52607_
                  (lambda (_kont52787_)
                    (let* ((_g5278952805_
                            (lambda (_g5279052802_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g5279052802_)))
                           (_g5278852850_
                            (lambda (_g5279052808_)
                              (if (gx#stx-pair? _g5279052808_)
                                  (let ((_e5279252810_
                                         (gx#stx-e _g5279052808_)))
                                    (let ((_hd5279352813_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e5279252810_)))
                                          (_tl5279452815_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e5279252810_))))
                                      (if (gx#identifier? _hd5279352813_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd5279352813_)
                                              (if (gx#stx-pair? _tl5279452815_)
                                                  (let ((_e5279552818_
                                                         (gx#stx-e
                                                          _tl5279452815_)))
                                                    (let ((_hd5279652821_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5279552818_)))
                                                          (_tl5279752823_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5279552818_))))
                                                      (if (gx#stx-null?
                                                           _hd5279652821_)
                                                          (if (gx#stx-pair?
                                                               _tl5279752823_)
                                                              (let ((_e5279852826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl5279752823_)))
                        (let ((_hd5279952829_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5279852826_)))
                              (_tl5280052831_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5279852826_))))
                          (if (gx#stx-null? _tl5280052831_)
                              ((lambda (_L52834_) _L52834_) _hd5279952829_)
                              (_g5278952805_ _g5279052808_))))
                      (_g5278952805_ _g5279052808_))
                  (_g5278952805_ _g5279052808_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5278952805_
                                                   _g5279052808_))
                                              (_g5278952805_ _g5279052808_))
                                          (_g5278952805_ _g5279052808_))))
                                  (_g5278952805_ _g5279052808_)))))
                      (_g5278852850_ _kont52787_))))
                 (_match-body52608_
                  (lambda (_blocks52684_)
                    (let* ((_blocks5268552694_ _blocks52684_)
                           (_E5268752698_
                            (lambda ()
                              (error '"No clause matching"
                                     _blocks5268552694_)))
                           (_K5268852770_
                            (lambda (_rest52701_ _start52702_)
                              (let _lp52704_ ((_rest52706_ _rest52701_)
                                              (_body52707_
                                               (_start-match52607_
                                                _start52702_)))
                                (let* ((_rest5270852716_ _rest52706_)
                                       (_else5271052724_
                                        (lambda () _body52707_))
                                       (_K5271252758_
                                        (lambda (_rest52727_ _block52728_)
                                          (let* ((_block5272952736_
                                                  _block52728_)
                                                 (_E5273152740_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _block5272952736_)))
                                                 (_K5273252746_
                                                  (lambda (_kont52743_
                                                           _K52744_)
                                                    (_lp52704_
                                                     _rest52727_
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _K52744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _kont52743_ '()))
                               '())
                         (cons _body52707_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _block5272952736_))
                                                (let ((_hd5273352749_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _block5272952736_)))
                                                      (_tl5273452751_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _block5272952736_))))
                                                  (let* ((_K52754_
                                                          _hd5273352749_)
                                                         (_kont52756_
                                                          _tl5273452751_))
                                                    (_K5273252746_
                                                     _kont52756_
                                                     _K52754_)))
                                                (_E5273152740_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest5270852716_))
                                      (let ((_hd5271352761_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest5270852716_)))
                                            (_tl5271452763_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest5270852716_))))
                                        (let* ((_block52766_ _hd5271352761_)
                                               (_rest52768_ _tl5271452763_))
                                          (_K5271252758_
                                           _rest52768_
                                           _block52766_)))
                                      (_else5271052724_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _blocks5268552694_))
                          (let ((_hd5268952773_
                                 (let ()
                                   (declare (not safe))
                                   (##car _blocks5268552694_)))
                                (_tl5269052775_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _blocks5268552694_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd5268952773_))
                                (let ((_hd5269152778_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd5268952773_)))
                                      (_tl5269252780_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd5268952773_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##eq? _hd5269152778_ '#f))
                                      (let* ((_start52783_ _tl5269252780_)
                                             (_rest52785_ _tl5269052775_))
                                        (_K5268852770_
                                         _rest52785_
                                         _start52783_))
                                      (_E5268752698_)))
                                (_E5268752698_)))
                          (_E5268752698_))))))
          (call-with-parameters
           (lambda ()
             (let* ((_clauses52611_
                     (map _push-variables52606_ _clauses52603_ _konts52604_))
                    (_blocks52613_
                     (gxc#optimize-match-basic-blocks _clauses52611_))
                    (_blocks52615_
                     (gxc#optimize-match-fold-basic-blocks _blocks52613_))
                    (_body52617_ (_match-body52608_ _blocks52615_))
                    (_bind52651_
                     (map (lambda (_e5261852620_)
                            (let* ((_g5262252629_ _e5261852620_)
                                   (_E5262452633_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _g5262252629_)))
                                   (_K5262552639_
                                    (lambda (_kont52636_ _K52637_)
                                      (cons (cons _K52637_ '())
                                            (cons _kont52636_ '())))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _g5262252629_))
                                  (let ((_hd5262652642_
                                         (let ()
                                           (declare (not safe))
                                           (##car _g5262252629_)))
                                        (_tl5262752644_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _g5262252629_))))
                                    (let* ((_K52647_ _hd5262652642_)
                                           (_kont52649_ _tl5262752644_))
                                      (_K5262552639_ _kont52649_ _K52647_)))
                                  (_E5262452633_))))
                          _konts52604_))
                    (_negate52681_
                     (let* ((_negation5265252659_ _negation52602_)
                            (_E5265452663_
                             (lambda ()
                               (error '"No clause matching"
                                      _negation5265252659_)))
                            (_K5265552669_
                             (lambda (_kont52666_ _K52667_)
                               (cons (cons _K52667_ '())
                                     (cons _kont52666_ '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _negation5265252659_))
                           (let ((_hd5265652672_
                                  (let ()
                                    (declare (not safe))
                                    (##car _negation5265252659_)))
                                 (_tl5265752674_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _negation5265252659_))))
                             (let* ((_K52677_ _hd5265652672_)
                                    (_kont52679_ _tl5265752674_))
                               (_K5265552669_ _kont52679_ _K52677_)))
                           (_E5265452663_)))))
               (gxc#xform-wrap-source
                (cons '%#let-values
                      (cons (cons _negate52681_ '())
                            (cons (cons '%#let-values
                                        (cons _bind52651_
                                              (cons _body52617_ '())))
                                  '())))
                _stx52601_)))
           gx#current-expander-context
           (let ((__obj56794 (make-object gx#local-context::t '5)))
             (gx#local-context:::init!__0 __obj56794)
             __obj56794)))))
    (define gxc#optimize-match-basic-blocks
      (lambda (_clauses52561_)
        (let _lp52563_ ((_rest52565_ _clauses52561_) (_blocks52566_ '()))
          (let* ((_rest5256752575_ _rest52565_)
                 (_else5256952583_ (lambda () (reverse _blocks52566_)))
                 (_K5257152589_
                  (lambda (_rest52586_ _clause52587_)
                    (_lp52563_
                     _rest52586_
                     (gxc#optimize-match-lift-basic-blocks
                      _clause52587_
                      _blocks52566_)))))
            (if (let () (declare (not safe)) (##pair? _rest5256752575_))
                (let ((_hd5257252592_
                       (let () (declare (not safe)) (##car _rest5256752575_)))
                      (_tl5257352594_
                       (let () (declare (not safe)) (##cdr _rest5256752575_))))
                  (let* ((_clause52597_ _hd5257252592_)
                         (_rest52599_ _tl5257352594_))
                    (_K5257152589_ _rest52599_ _clause52597_)))
                (_else5256952583_))))))
    (define gxc#optimize-match-lift-basic-blocks
      (lambda (_clause51905_ _blocks51906_)
        (letrec ((_bind->args51908_
                  (lambda (_bind52556_)
                    (foldl1 (lambda (_b52558_ _r52559_)
                              (cons (cons '%#ref (cons (car _b52558_) '()))
                                    _r52559_))
                            '()
                            _bind52556_)))
                 (_create-block51909_
                  (lambda (_body52505_
                           _let-bind52506_
                           _bind52507_
                           _assert52508_)
                    (let* ((_id52510_ (make-symbol (gensym '__match)))
                           (_id52512_ (gx#core-quote-syntax__0 _id52510_))
                           (_g56797_ (gx#core-bind-runtime!__0 _id52512_))
                           (_block52515_
                            (cons _id52512_
                                  (cons _body52505_
                                        (cons _bind52507_
                                              (cons _assert52508_ '())))))
                           (_continue52517_
                            (cons '%#call
                                  (cons (cons '%#ref (cons _id52512_ '()))
                                        (_bind->args51908_ _bind52507_))))
                           (_continue52553_
                            (if (null? _let-bind52506_)
                                _continue52517_
                                (let ((_locals52551_
                                       (map (lambda (_e5251852520_)
                                              (let* ((_g5252252529_
                                                      _e5251852520_)
                                                     (_E5252452533_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g5252252529_)))
                                                     (_K5252552539_
                                                      (lambda (_expr52536_
                                                               _id52537_)
                                                        (cons (cons _id52537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _expr52536_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _g5252252529_))
                                                    (let ((_hd5252652542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _g5252252529_)))
                                                          (_tl5252752544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _g5252252529_))))
                                                      (let* ((_id52547_
                                                              _hd5252652542_)
                                                             (_expr52549_
                                                              _tl5252752544_))
                                                        (_K5252552539_
                                                         _expr52549_
                                                         _id52547_)))
                                                    (_E5252452533_))))
                                            _let-bind52506_)))
                                  (cons '%#let-values
                                        (cons _locals52551_
                                              (cons _continue52517_ '())))))))
                      (values _continue52553_ _block52515_))))
                 (_basic-block51910_
                  (lambda (_body52091_ _bind52092_ _assert52093_)
                    (let* ((___stx5403754038_ _body52091_)
                           (_g5209852182_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx5403754038_))))
                      (let ((___kont5403954040_
                             (lambda (_L52441_ _L52442_ _L52443_)
                               (let ((_g56798_
                                      (_create-block51909_
                                       _L52442_
                                       '()
                                       _bind52092_
                                       (cons (cons _L52443_ '#t)
                                             _assert52093_))))
                                 (begin
                                   (let ((_g56799_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g56798_)
                                                (##vector-length _g56798_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g56799_ 2)))
                                         (error "Context expects 2 values"
                                                _g56799_)))
                                   (let ((_k-continue52461_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g56798_ 0)))
                                         (_k-block52462_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g56798_ 1))))
                                     (let* ((___stx5401954020_ _L52441_)
                                            (_g5246552474_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx5401954020_))))
                                       (let ((___kont5402154022_
                                              (lambda ()
                                                (values (cons '%#if
                                                              (cons _L52443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k-continue52461_ (cons _L52441_ '()))))
                (cons _k-block52462_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (___kont5402354024_
                                              (lambda ()
                                                (let ((_g56800_
                                                       (_create-block51909_
                                                        _L52441_
                                                        '()
                                                        _bind52092_
                                                        (cons (cons _L52443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f)
                      _assert52093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (let ((_g56801_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g56800_)
                         (##vector-length _g56800_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g56801_ 2)))
                  (error "Context expects 2 values" _g56801_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_e-continue52481_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g56800_
                                                              0)))
                                                          (_e-block52482_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g56800_
                                                              1))))
                                                      (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L52443_
                                  (cons _k-continue52461_
                                        (cons _e-continue52481_ '()))))
                      (cons _k-block52462_ (cons _e-block52482_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#stx-pair? ___stx5401954020_)
                                             (let ((_e5246752489_
                                                    (gx#stx-e
                                                     ___stx5401954020_)))
                                               (let ((_tl5246952494_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5246752489_)))
                                                     (_hd5246852492_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5246752489_))))
                                                 (if (gx#identifier?
                                                      _hd5246852492_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd5246852492_)
                                                         (___kont5402154022_)
                                                         (___kont5402354024_))
                                                     (___kont5402354024_))))
                                             (___kont5402354024_)))))))))
                            (___kont5404154042_
                             (lambda () (values _body52091_ '())))
                            (___kont5404554046_
                             (lambda (_L52270_ _L52271_ _L52272_)
                               (let* ((_let-bind52307_
                                       (map cons
                                            (foldr1 (lambda (_g5229252295_
                                                             _g5229352297_)
                                                      (cons _g5229252295_
                                                            _g5229352297_))
                                                    '()
                                                    _L52272_)
                                            (foldr1 (lambda (_g5229952302_
                                                             _g5230052304_)
                                                      (cons _g5229952302_
                                                            _g5230052304_))
                                                    '()
                                                    _L52271_)))
                                      (_g56802_
                                       (_create-block51909_
                                        _L52270_
                                        _let-bind52307_
                                        (foldl1 cons
                                                _bind52092_
                                                _let-bind52307_)
                                        _assert52093_)))
                                 (begin
                                   (let ((_g56803_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g56802_)
                                                (##vector-length _g56802_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g56803_ 2)))
                                         (error "Context expects 2 values"
                                                _g56803_)))
                                   (let ((_continue52309_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g56802_ 0)))
                                         (_block52310_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g56802_ 1))))
                                     (let ()
                                       (values _continue52309_
                                               (cons _block52310_ '()))))))))
                            (___kont5404954050_
                             (lambda () (values _body52091_ '()))))
                        (let* ((___match5412854129_
                                (lambda (_e5214952194_
                                         _hd5215052197_
                                         _tl5215152199_
                                         _e5215252202_
                                         _hd5215352205_
                                         _tl5215452207_
                                         ___splice5404754048_
                                         _target5215552210_
                                         _tl5215752212_)
                                  (letrec ((_loop5215852215_
                                            (lambda (_hd5215652218_
                                                     _expr5216252220_
                                                     _id5216352222_)
                                              (if (gx#stx-pair? _hd5215652218_)
                                                  (let ((_e5215952225_
                                                         (gx#stx-e
                                                          _hd5215652218_)))
                                                    (let ((_lp-tl5216152230_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5215952225_)))
                                                          (_lp-hd5216052228_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5215952225_))))
                                                      (if (gx#stx-pair?
                                                           _lp-hd5216052228_)
                                                          (let ((_e5216652233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _lp-hd5216052228_)))
                    (let ((_tl5216852238_
                           (let () (declare (not safe)) (##cdr _e5216652233_)))
                          (_hd5216752236_
                           (let ()
                             (declare (not safe))
                             (##car _e5216652233_))))
                      (if (gx#stx-pair? _hd5216752236_)
                          (let ((_e5216952241_ (gx#stx-e _hd5216752236_)))
                            (let ((_tl5217152246_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5216952241_)))
                                  (_hd5217052244_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5216952241_))))
                              (if (gx#stx-null? _tl5217152246_)
                                  (if (gx#stx-pair? _tl5216852238_)
                                      (let ((_e5217252249_
                                             (gx#stx-e _tl5216852238_)))
                                        (let ((_tl5217452254_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5217252249_)))
                                              (_hd5217352252_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5217252249_))))
                                          (if (gx#stx-null? _tl5217452254_)
                                              (_loop5215852215_
                                               _lp-tl5216152230_
                                               (cons _hd5217352252_
                                                     _expr5216252220_)
                                               (cons _hd5217052244_
                                                     _id5216352222_))
                                              (___kont5404954050_))))
                                      (___kont5404954050_))
                                  (___kont5404954050_))))
                          (___kont5404954050_))))
                  (___kont5404954050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_id5216552259_
                                                         (reverse _id5216352222_))
                                                        (_expr5216452257_
                                                         (reverse _expr5216252220_)))
                                                    (if (gx#stx-pair?
                                                         _tl5215452207_)
                                                        (let ((_e5217552262_
                                                               (gx#stx-e
                                                                _tl5215452207_)))
                                                          (let ((_tl5217752267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5217552262_)))
                        (_hd5217652265_
                         (let () (declare (not safe)) (##car _e5217552262_))))
                    (if (gx#stx-null? _tl5217752267_)
                        (___kont5404554046_
                         _hd5217652265_
                         _expr5216452257_
                         _id5216552259_)
                        (___kont5404954050_))))
                (___kont5404954050_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop5215852215_
                                     _target5215552210_
                                     '()
                                     '()))))
                               (___match5410454105_
                                (lambda (_e5211552318_
                                         _hd5211652321_
                                         _tl5211752323_
                                         _e5211852326_
                                         _hd5211952329_
                                         _tl5212052331_
                                         ___splice5404354044_
                                         _target5212152334_
                                         _tl5212352336_)
                                  (letrec ((_loop5212452339_
                                            (lambda (_hd5212252342_)
                                              (if (gx#stx-pair? _hd5212252342_)
                                                  (let ((_e5212552345_
                                                         (gx#stx-e
                                                          _hd5212252342_)))
                                                    (let ((_lp-tl5212752350_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5212552345_)))
                                                          (_lp-hd5212652348_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5212552345_))))
                                                      (if (gx#stx-pair?
                                                           _lp-hd5212652348_)
                                                          (let ((_e5212852353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _lp-hd5212652348_)))
                    (let ((_tl5213052358_
                           (let () (declare (not safe)) (##cdr _e5212852353_)))
                          (_hd5212952356_
                           (let ()
                             (declare (not safe))
                             (##car _e5212852353_))))
                      (if (gx#stx-pair? _hd5212952356_)
                          (let ((_e5213152361_ (gx#stx-e _hd5212952356_)))
                            (let ((_tl5213352366_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5213152361_)))
                                  (_hd5213252364_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5213152361_))))
                              (if (gx#stx-null? _tl5213352366_)
                                  (if (gx#stx-pair? _tl5213052358_)
                                      (let ((_e5213452369_
                                             (gx#stx-e _tl5213052358_)))
                                        (let ((_tl5213652374_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5213452369_)))
                                              (_hd5213552372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5213452369_))))
                                          (if (gx#stx-pair? _hd5213552372_)
                                              (let ((_e5213752377_
                                                     (gx#stx-e
                                                      _hd5213552372_)))
                                                (let ((_tl5213952382_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5213752377_)))
                                                      (_hd5213852380_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5213752377_))))
                                                  (if (gx#identifier?
                                                       _hd5213852380_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd5213852380_)
                                                          (if (gx#stx-pair?
                                                               _tl5213952382_)
                                                              (let ((_e5214052385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl5213952382_)))
                        (let ((_tl5214252390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5214052385_)))
                              (_hd5214152388_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5214052385_))))
                          (if (gx#stx-null? _tl5214252390_)
                              (if (gx#stx-null? _tl5213652374_)
                                  (_loop5212452339_ _lp-tl5212752350_)
                                  (___match5412854129_
                                   _e5211552318_
                                   _hd5211652321_
                                   _tl5211752323_
                                   _e5211852326_
                                   _hd5211952329_
                                   _tl5212052331_
                                   ___splice5404354044_
                                   _target5212152334_
                                   _tl5212352336_))
                              (___match5412854129_
                               _e5211552318_
                               _hd5211652321_
                               _tl5211752323_
                               _e5211852326_
                               _hd5211952329_
                               _tl5212052331_
                               ___splice5404354044_
                               _target5212152334_
                               _tl5212352336_))))
                      (___match5412854129_
                       _e5211552318_
                       _hd5211652321_
                       _tl5211752323_
                       _e5211852326_
                       _hd5211952329_
                       _tl5212052331_
                       ___splice5404354044_
                       _target5212152334_
                       _tl5212352336_))
                  (___match5412854129_
                   _e5211552318_
                   _hd5211652321_
                   _tl5211752323_
                   _e5211852326_
                   _hd5211952329_
                   _tl5212052331_
                   ___splice5404354044_
                   _target5212152334_
                   _tl5212352336_))
              (___match5412854129_
               _e5211552318_
               _hd5211652321_
               _tl5211752323_
               _e5211852326_
               _hd5211952329_
               _tl5212052331_
               ___splice5404354044_
               _target5212152334_
               _tl5212352336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match5412854129_
                                               _e5211552318_
                                               _hd5211652321_
                                               _tl5211752323_
                                               _e5211852326_
                                               _hd5211952329_
                                               _tl5212052331_
                                               ___splice5404354044_
                                               _target5212152334_
                                               _tl5212352336_))))
                                      (___match5412854129_
                                       _e5211552318_
                                       _hd5211652321_
                                       _tl5211752323_
                                       _e5211852326_
                                       _hd5211952329_
                                       _tl5212052331_
                                       ___splice5404354044_
                                       _target5212152334_
                                       _tl5212352336_))
                                  (___match5412854129_
                                   _e5211552318_
                                   _hd5211652321_
                                   _tl5211752323_
                                   _e5211852326_
                                   _hd5211952329_
                                   _tl5212052331_
                                   ___splice5404354044_
                                   _target5212152334_
                                   _tl5212352336_))))
                          (___match5412854129_
                           _e5211552318_
                           _hd5211652321_
                           _tl5211752323_
                           _e5211852326_
                           _hd5211952329_
                           _tl5212052331_
                           ___splice5404354044_
                           _target5212152334_
                           _tl5212352336_))))
                  (___match5412854129_
                   _e5211552318_
                   _hd5211652321_
                   _tl5211752323_
                   _e5211852326_
                   _hd5211952329_
                   _tl5212052331_
                   ___splice5404354044_
                   _target5212152334_
                   _tl5212352336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (if (gx#stx-pair?
                                                         _tl5212052331_)
                                                        (let ((_e5214352394_
                                                               (gx#stx-e
                                                                _tl5212052331_)))
                                                          (let ((_tl5214552399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5214352394_)))
                        (_hd5214452397_
                         (let () (declare (not safe)) (##car _e5214352394_))))
                    (if (gx#stx-null? _tl5214552399_)
                        (___kont5404154042_)
                        (___match5412854129_
                         _e5211552318_
                         _hd5211652321_
                         _tl5211752323_
                         _e5211852326_
                         _hd5211952329_
                         _tl5212052331_
                         ___splice5404354044_
                         _target5212152334_
                         _tl5212352336_))))
                (___match5412854129_
                 _e5211552318_
                 _hd5211652321_
                 _tl5211752323_
                 _e5211852326_
                 _hd5211952329_
                 _tl5212052331_
                 ___splice5404354044_
                 _target5212152334_
                 _tl5212352336_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop5212452339_ _target5212152334_)))))
                          (if (gx#stx-pair? ___stx5403754038_)
                              (let ((_e5210352409_
                                     (gx#stx-e ___stx5403754038_)))
                                (let ((_tl5210552414_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5210352409_)))
                                      (_hd5210452412_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5210352409_))))
                                  (if (gx#identifier? _hd5210452412_)
                                      (if (gx#stx-eq? '%#if _hd5210452412_)
                                          (if (gx#stx-pair? _tl5210552414_)
                                              (let ((_e5210652417_
                                                     (gx#stx-e
                                                      _tl5210552414_)))
                                                (let ((_tl5210852422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5210652417_)))
                                                      (_hd5210752420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5210652417_))))
                                                  (if (gx#stx-pair?
                                                       _tl5210852422_)
                                                      (let ((_e5210952425_
                                                             (gx#stx-e
                                                              _tl5210852422_)))
                                                        (let ((_tl5211152430_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5210952425_)))
                      (_hd5211052428_
                       (let () (declare (not safe)) (##car _e5210952425_))))
                  (if (gx#stx-pair? _tl5211152430_)
                      (let ((_e5211252433_ (gx#stx-e _tl5211152430_)))
                        (let ((_tl5211452438_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5211252433_)))
                              (_hd5211352436_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5211252433_))))
                          (if (gx#stx-null? _tl5211452438_)
                              (___kont5403954040_
                               _hd5211352436_
                               _hd5211052428_
                               _hd5210752420_)
                              (___kont5404954050_))))
                      (___kont5404954050_))))
              (___kont5404954050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont5404954050_))
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd5210452412_)
                                              (if (gx#stx-pair? _tl5210552414_)
                                                  (let ((_e5211852326_
                                                         (gx#stx-e
                                                          _tl5210552414_)))
                                                    (let ((_tl5212052331_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5211852326_)))
                                                          (_hd5211952329_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5211852326_))))
                                                      (if (gx#stx-pair/null?
                                                           _hd5211952329_)
                                                          (let ((___splice5404354044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd5211952329_ '0)))
                    (let ((_tl5212352336_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice5404354044_ '1)))
                          (_target5212152334_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice5404354044_ '0))))
                      (if (gx#stx-null? _tl5212352336_)
                          (___match5410454105_
                           _e5210352409_
                           _hd5210452412_
                           _tl5210552414_
                           _e5211852326_
                           _hd5211952329_
                           _tl5212052331_
                           ___splice5404354044_
                           _target5212152334_
                           _tl5212352336_)
                          (___kont5404954050_))))
                  (___kont5404954050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont5404954050_))
                                              (___kont5404954050_)))
                                      (___kont5404954050_))))
                              (___kont5404954050_)))))))
                 (_fold-blocks51911_
                  (lambda (_rest52010_ _blocks52011_)
                    (let* ((_rest5201252029_ _rest52010_)
                           (_E5201552033_
                            (lambda ()
                              (error '"No clause matching" _rest5201252029_))))
                      (let ((_K5201752053_
                             (lambda (_rest52044_
                                      _assert52045_
                                      _bind52046_
                                      _body52047_
                                      _name52048_)
                               (let ((_g56804_
                                      (_basic-block51910_
                                       _body52047_
                                       _bind52046_
                                       _assert52045_)))
                                 (begin
                                   (let ((_g56805_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g56804_)
                                                (##vector-length _g56804_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g56805_ 2)))
                                         (error "Context expects 2 values"
                                                _g56805_)))
                                   (let ((_body52050_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g56804_ 0)))
                                         (_body-blocks52051_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g56804_ 1))))
                                     (_fold-blocks51911_
                                      (foldl1 cons
                                              _rest52044_
                                              _body-blocks52051_)
                                      (cons (cons _name52048_
                                                  (cons 'continue:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (reverse (map car _bind52046_))
                                  (cons _body52050_ '())))
                      (cons _assert52045_ (cons _bind52046_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks52011_)))))))
                            (_K5201652038_ (lambda () _blocks52011_)))
                        (let ((_try-match5201452041_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##null? _rest5201252029_))
                                     (_K5201652038_)
                                     (_E5201552033_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest5201252029_))
                              (let ((_tl5201952058_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest5201252029_)))
                                    (_hd5201852056_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest5201252029_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd5201852056_))
                                    (let ((_tl5202152063_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd5201852056_)))
                                          (_hd5202052061_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd5201852056_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl5202152063_))
                                          (let ((_tl5202352070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl5202152063_)))
                                                (_hd5202252068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl5202152063_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _tl5202352070_))
                                                (let ((_tl5202552077_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _tl5202352070_)))
                                                      (_hd5202452075_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _tl5202352070_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _tl5202552077_))
                                                      (let ((_tl5202752084_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _tl5202552077_)))
                    (_hd5202652082_
                     (let () (declare (not safe)) (##car _tl5202552077_))))
                (if (let () (declare (not safe)) (##null? _tl5202752084_))
                    (let ((_name52066_ _hd5202052061_)
                          (_body52073_ _hd5202252068_)
                          (_bind52080_ _hd5202452075_)
                          (_assert52087_ _hd5202652082_)
                          (_rest52089_ _tl5201952058_))
                      (_K5201752053_
                       _rest52089_
                       _assert52087_
                       _bind52080_
                       _body52073_
                       _name52066_))
                    (_E5201552033_)))
              (_E5201552033_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E5201552033_)))
                                          (_E5201552033_)))
                                    (_E5201552033_)))
                              (_try-match5201452041_))))))))
          (let* ((_clause5191251919_ _clause51905_)
                 (_E5191451923_
                  (lambda () (error '"No clause matching" _clause5191251919_)))
                 (_K5191551998_
                  (lambda (_body51926_ _name51927_)
                    (let* ((_g5192951945_
                            (lambda (_g5193051942_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g5193051942_)))
                           (_g5192851995_
                            (lambda (_g5193051948_)
                              (if (gx#stx-pair? _g5193051948_)
                                  (let ((_e5193251950_
                                         (gx#stx-e _g5193051948_)))
                                    (let ((_hd5193351953_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e5193251950_)))
                                          (_tl5193451955_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e5193251950_))))
                                      (if (gx#identifier? _hd5193351953_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd5193351953_)
                                              (if (gx#stx-pair? _tl5193451955_)
                                                  (let ((_e5193551958_
                                                         (gx#stx-e
                                                          _tl5193451955_)))
                                                    (let ((_hd5193651961_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5193551958_)))
                                                          (_tl5193751963_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5193551958_))))
                                                      (if (gx#stx-null?
                                                           _hd5193651961_)
                                                          (if (gx#stx-pair?
                                                               _tl5193751963_)
                                                              (let ((_e5193851966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl5193751963_)))
                        (let ((_hd5193951969_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5193851966_)))
                              (_tl5194051971_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5193851966_))))
                          (if (gx#stx-null? _tl5194051971_)
                              ((lambda (_L51974_)
                                 (let ((_g56806_
                                        (_basic-block51910_ _L51974_ '() '())))
                                   (begin
                                     (let ((_g56807_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g56806_)
                                                  (##vector-length _g56806_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g56807_ 2)))
                                           (error "Context expects 2 values"
                                                  _g56807_)))
                                     (let ((_body51992_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g56806_ 0)))
                                           (_body-blocks51993_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g56806_ 1))))
                                       (_fold-blocks51911_
                                        _body-blocks51993_
                                        (cons (cons _name51927_
                                                    (cons 'restart:
                                                          (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '() (cons _body51992_ '())))
                        (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _blocks51906_))))))
                               _hd5193951969_)
                              (_g5192951945_ _g5193051948_))))
                      (_g5192951945_ _g5193051948_))
                  (_g5192951945_ _g5193051948_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5192951945_
                                                   _g5193051948_))
                                              (_g5192951945_ _g5193051948_))
                                          (_g5192951945_ _g5193051948_))))
                                  (_g5192951945_ _g5193051948_)))))
                      (_g5192851995_ _body51926_)))))
            (if (let () (declare (not safe)) (##pair? _clause5191251919_))
                (let ((_hd5191652001_
                       (let ()
                         (declare (not safe))
                         (##car _clause5191251919_)))
                      (_tl5191752003_
                       (let ()
                         (declare (not safe))
                         (##cdr _clause5191251919_))))
                  (let* ((_name52006_ _hd5191652001_)
                         (_body52008_ _tl5191752003_))
                    (_K5191551998_ _body52008_ _name52006_)))
                (_E5191451923_))))))
    (define gxc#optimize-match-fold-basic-blocks
      (lambda (_blocks51511_)
        (let _lp51513_ ((_rest51515_ _blocks51511_) (_blocks51516_ '()))
          (let* ((_rest5151751525_ _rest51515_)
                 (_else5151951574_
                  (lambda ()
                    (foldl1 (lambda (_block51533_ _r51534_)
                              (let* ((_block5153551546_ _block51533_)
                                     (_E5153751550_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _block5153551546_)))
                                     (_K5153851556_
                                      (lambda (_kont51553_ _name51554_)
                                        (cons (cons _name51554_ _kont51553_)
                                              _r51534_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _block5153551546_))
                                    (let ((_hd5153951559_
                                           (let ()
                                             (declare (not safe))
                                             (##car _block5153551546_)))
                                          (_tl5154051561_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _block5153551546_))))
                                      (let ((_name51564_ _hd5153951559_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl5154051561_))
                                            (let ((_tl5154251566_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl5154051561_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl5154251566_))
                                                  (let* ((_hd5154351569_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _tl5154251566_)))
                                                         (_kont51572_
                                                          _hd5154351569_))
                                                    (_K5153851556_
                                                     _kont51572_
                                                     _name51564_))
                                                  (_E5153751550_)))
                                            (_E5153751550_))))
                                    (_E5153751550_))))
                            '()
                            _blocks51516_)))
                 (_K5152151893_
                  (lambda (_rest51577_ _block51578_)
                    (let* ((_block5157951604_ _block51578_)
                           (_E5158251608_
                            (lambda ()
                              (error '"No clause matching"
                                     _block5157951604_))))
                      (let ((_K5159451864_
                             (lambda (_assert51786_ _kont51787_ _name51788_)
                               (let* ((_g5179051806_
                                       (lambda (_g5179151803_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g5179151803_)))
                                      (_g5178951861_
                                       (lambda (_g5179151809_)
                                         (if (gx#stx-pair? _g5179151809_)
                                             (let ((_e5179351811_
                                                    (gx#stx-e _g5179151809_)))
                                               (let ((_hd5179451814_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5179351811_)))
                                                     (_tl5179551816_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5179351811_))))
                                                 (if (gx#identifier?
                                                      _hd5179451814_)
                                                     (if (gx#stx-eq?
                                                          '%#lambda
                                                          _hd5179451814_)
                                                         (if (gx#stx-pair?
                                                              _tl5179551816_)
                                                             (let ((_e5179651819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl5179551816_)))
                       (let ((_hd5179751822_
                              (let ()
                                (declare (not safe))
                                (##car _e5179651819_)))
                             (_tl5179851824_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5179651819_))))
                         (if (gx#stx-null? _hd5179751822_)
                             (if (gx#stx-pair? _tl5179851824_)
                                 (let ((_e5179951827_
                                        (gx#stx-e _tl5179851824_)))
                                   (let ((_hd5180051830_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5179951827_)))
                                         (_tl5180151832_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5179951827_))))
                                     (if (gx#stx-null? _tl5180151832_)
                                         ((lambda (_L51835_)
                                            (let* ((_body51850_
                                                    (gxc#optimize-match-block
                                                     _L51835_
                                                     _assert51786_
                                                     '()
                                                     _rest51577_))
                                                   (_block51852_
                                                    (cons _name51788_
                                                          (cons 'restart:
                                                                (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons '() (cons _body51850_ '())))
                              (cons _assert51786_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_blocks51854_
                                                    (cons _block51852_
                                                          _blocks51516_))
                                                   (_rest51856_
                                                    (gxc#optimize-match-prune-blocks
                                                     _rest51577_
                                                     _blocks51854_))
                                                   (_rest51858_
                                                    (gxc#optimize-match-fuse-restart-blocks
                                                     _rest51856_
                                                     _blocks51854_)))
                                              (_lp51513_
                                               _rest51858_
                                               _blocks51854_)))
                                          _hd5180051830_)
                                         (_g5179051806_ _g5179151809_))))
                                 (_g5179051806_ _g5179151809_))
                             (_g5179051806_ _g5179151809_))))
                     (_g5179051806_ _g5179151809_))
                 (_g5179051806_ _g5179151809_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g5179051806_
                                                      _g5179151809_))))
                                             (_g5179051806_ _g5179151809_)))))
                                 (_g5178951861_ _kont51787_))))
                            (_K5158351747_
                             (lambda (_bind51612_
                                      _assert51613_
                                      _kont51614_
                                      _name51615_)
                               (let* ((_g5161751643_
                                       (lambda (_g5161851640_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g5161851640_)))
                                      (_g5161651744_
                                       (lambda (_g5161851646_)
                                         (if (gx#stx-pair? _g5161851646_)
                                             (let ((_e5162151648_
                                                    (gx#stx-e _g5161851646_)))
                                               (let ((_hd5162251651_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5162151648_)))
                                                     (_tl5162351653_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5162151648_))))
                                                 (if (gx#identifier?
                                                      _hd5162251651_)
                                                     (if (gx#stx-eq?
                                                          '%#lambda
                                                          _hd5162251651_)
                                                         (if (gx#stx-pair?
                                                              _tl5162351653_)
                                                             (let ((_e5162451656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl5162351653_)))
                       (let ((_hd5162551659_
                              (let ()
                                (declare (not safe))
                                (##car _e5162451656_)))
                             (_tl5162651661_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5162451656_))))
                         (if (gx#stx-pair/null? _hd5162551659_)
                             (let ((_g56808_
                                    (gx#syntax-split-splice
                                     _hd5162551659_
                                     '0)))
                               (begin
                                 (let ((_g56809_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g56808_)
                                              (##vector-length _g56808_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g56809_ 2)))
                                       (error "Context expects 2 values"
                                              _g56809_)))
                                 (let ((_target5162751664_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g56808_ 0)))
                                       (_tl5162951666_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g56808_ 1))))
                                   (if (gx#stx-null? _tl5162951666_)
                                       (letrec ((_loop5163051669_
                                                 (lambda (_hd5162851672_
                                                          _id5163451674_)
                                                   (if (gx#stx-pair?
                                                        _hd5162851672_)
                                                       (let ((_e5163151677_
                                                              (gx#stx-e
                                                               _hd5162851672_)))
                                                         (let ((_lp-hd5163251680_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e5163151677_)))
                       (_lp-tl5163351682_
                        (let () (declare (not safe)) (##cdr _e5163151677_))))
                   (_loop5163051669_
                    _lp-tl5163351682_
                    (cons _lp-hd5163251680_ _id5163451674_))))
               (let ((_id5163551685_ (reverse _id5163451674_)))
                 (if (gx#stx-pair? _tl5162651661_)
                     (let ((_e5163651688_ (gx#stx-e _tl5162651661_)))
                       (let ((_hd5163751691_
                              (let ()
                                (declare (not safe))
                                (##car _e5163651688_)))
                             (_tl5163851693_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5163651688_))))
                         (if (gx#stx-null? _tl5163851693_)
                             ((lambda (_L51696_ _L51697_)
                                (let* ((_body51726_
                                        (gxc#optimize-match-block
                                         _L51696_
                                         _assert51613_
                                         _bind51612_
                                         _rest51577_))
                                       (_block51735_
                                        (cons _name51615_
                                              (cons 'continue:
                                                    (cons (cons '%#lambda
                                                                (cons (foldr1 (lambda (_g5172751730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               _g5172851732_)
                                        (cons _g5172751730_ _g5172851732_))
                                      '()
                                      _L51697_)
                              (cons _body51726_ '())))
                  (cons _assert51613_ (cons _bind51612_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_blocks51737_
                                        (cons _block51735_ _blocks51516_))
                                       (_rest51739_
                                        (gxc#optimize-match-prune-blocks
                                         _rest51577_
                                         _blocks51737_))
                                       (_rest51741_
                                        (gxc#optimize-match-fuse-restart-blocks
                                         _rest51739_
                                         _blocks51737_)))
                                  (_lp51513_ _rest51741_ _blocks51737_)))
                              _hd5163751691_
                              _id5163551685_)
                             (_g5161751643_ _g5161851646_))))
                     (_g5161751643_ _g5161851646_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop5163051669_
                                          _target5162751664_
                                          '()))
                                       (_g5161751643_ _g5161851646_)))))
                             (_g5161751643_ _g5161851646_))))
                     (_g5161751643_ _g5161851646_))
                 (_g5161751643_ _g5161851646_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g5161751643_
                                                      _g5161851646_))))
                                             (_g5161751643_ _g5161851646_)))))
                                 (_g5161651744_ _kont51614_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _block5157951604_))
                            (let ((_tl5159651869_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _block5157951604_)))
                                  (_hd5159551867_
                                   (let ()
                                     (declare (not safe))
                                     (##car _block5157951604_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl5159651869_))
                                  (let ((_tl5159851876_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl5159651869_)))
                                        (_hd5159751874_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl5159651869_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##eq? _hd5159751874_ 'restart:))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl5159851876_))
                                            (let ((_tl5160051881_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl5159851876_)))
                                                  (_hd5159951879_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl5159851876_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl5160051881_))
                                                  (let ((_tl5160251888_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl5160051881_)))
                                                        (_hd5160151886_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl5160051881_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl5160251888_))
                                                        (let ((_name51872_
                                                               _hd5159551867_)
                                                              (_kont51884_
                                                               _hd5159951879_)
                                                              (_assert51891_
                                                               _hd5160151886_))
                                                          (_K5159451864_
                                                           _assert51891_
                                                           _kont51884_
                                                           _name51872_))
                                                        (_E5158251608_)))
                                                  (_E5158251608_)))
                                            (_E5158251608_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##eq? _hd5159751874_
                                                     'continue:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _tl5159851876_))
                                                (let ((_tl5158951764_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _tl5159851876_)))
                                                      (_hd5158851762_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _tl5159851876_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _tl5158951764_))
                                                      (let ((_tl5159151771_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _tl5158951764_)))
                    (_hd5159051769_
                     (let () (declare (not safe)) (##car _tl5158951764_))))
                (if (let () (declare (not safe)) (##pair? _tl5159151771_))
                    (let ((_tl5159351778_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl5159151771_)))
                          (_hd5159251776_
                           (let ()
                             (declare (not safe))
                             (##car _tl5159151771_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl5159351778_))
                          (let ((_name51755_ _hd5159551867_)
                                (_kont51767_ _hd5158851762_)
                                (_assert51774_ _hd5159051769_)
                                (_bind51781_ _hd5159251776_))
                            (_K5158351747_
                             _bind51781_
                             _assert51774_
                             _kont51767_
                             _name51755_))
                          (_E5158251608_)))
                    (_E5158251608_)))
              (_E5158251608_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E5158251608_))
                                            (_E5158251608_))))
                                  (_E5158251608_)))
                            (_E5158251608_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5151751525_))
                (let ((_hd5152251896_
                       (let () (declare (not safe)) (##car _rest5151751525_)))
                      (_tl5152351898_
                       (let () (declare (not safe)) (##cdr _rest5151751525_))))
                  (let* ((_block51901_ _hd5152251896_)
                         (_rest51903_ _tl5152351898_))
                    (_K5152151893_ _rest51903_ _block51901_)))
                (_else5151951574_))))))
    (define gxc#optimize-match-block
      (lambda (_body46134_ _assert46135_ _bind46136_ _blocks46137_)
        (letrec* ((_env-assert46372_ '())
                  (_env-type46373_ '())
                  (_env-bind46374_ '())
                  (_in-splice?46375_ '#f)
                  (_do-assert46376_
                   (lambda (_assert51434_ _K51435_)
                     (if (pair? _assert51434_)
                         (let _lp51437_ ((_rest51439_ _assert51434_)
                                         (_env-assert51440_ _env-assert46372_)
                                         (_env-type51441_ _env-type46373_))
                           (let* ((_rest5144251450_ _rest51439_)
                                  (_else5144451458_
                                   (lambda ()
                                     (_do-assert!46382_
                                      _env-assert51440_
                                      _env-type51441_
                                      _K51435_)))
                                  (_K5144651499_
                                   (lambda (_rest51461_ _assert51462_)
                                     (let* ((_assert5146351470_ _assert51462_)
                                            (_E5146551474_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _assert5146351470_)))
                                            (_K5146651487_
                                             (lambda (_val51477_ _expr51478_)
                                               (let* ((_sexpr51480_
                                                       (gxc#apply-generate-runtime-repr
                                                        _expr51478_))
                                                      (_env-assert51482_
                                                       (cons (cons _sexpr51480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _val51477_)
                     _env-assert51440_))
              (_env-type51484_
               (_fold-assert-type46378_
                _expr51478_
                _val51477_
                _env-type51441_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_lp51437_
                                                  _rest51461_
                                                  _env-assert51482_
                                                  _env-type51484_)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _assert5146351470_))
                                           (let ((_hd5146751490_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _assert5146351470_)))
                                                 (_tl5146851492_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _assert5146351470_))))
                                             (let* ((_expr51495_
                                                     _hd5146751490_)
                                                    (_val51497_
                                                     _tl5146851492_))
                                               (_K5146651487_
                                                _val51497_
                                                _expr51495_)))
                                           (_E5146551474_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest5144251450_))
                                 (let ((_hd5144751502_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest5144251450_)))
                                       (_tl5144851504_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest5144251450_))))
                                   (let* ((_assert51507_ _hd5144751502_)
                                          (_rest51509_ _tl5144851504_))
                                     (_K5144651499_
                                      _rest51509_
                                      _assert51507_)))
                                 (_else5144451458_))))
                         (_K51435_))))
                  (_predicate-type46377_
                   (lambda (_id51379_)
                     (let* ((_sym51381_ (gxc#identifier-symbol _id51379_))
                            (_$e51383_ _sym51381_))
                       (let ((_default5138551416_
                              (lambda ()
                                (let* ((_g5138851395_
                                        (gxc#optimizer-resolve-type
                                         _sym51381_))
                                       (_else5139051403_ (lambda () '#f))
                                       (_K5139251408_
                                        (lambda (_struct-t51406_)
                                          (gxc#optimizer-resolve-type
                                           _struct-t51406_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _g5138851395_
                                         'gxc#!struct-pred::t))
                                      (let* ((_e5139351411_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _g5138851395_
                                                 '1)))
                                             (_struct-t51414_ _e5139351411_))
                                        (gxc#optimizer-resolve-type
                                         _struct-t51414_))
                                      (_else5139051403_)))))
                             (_table5138651418_
                              '#(#f
                                 (##box? . 3)
                                 #f
                                 (##pair? . 0)
                                 #f
                                 (gx#stx-vector? . 7)
                                 (gx#identifier? . 4)
                                 #f
                                 #f
                                 #f
                                 (vector? . 2)
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 (null? . 1)
                                 #f
                                 #f
                                 #f
                                 #f
                                 (gx#stx-pair? . 5)
                                 #f
                                 (gx#stx-null? . 6)
                                 #f
                                 #f
                                 #f
                                 (##vector? . 2)
                                 #f
                                 (pair? . 0)
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 (gx#stx-datum? . 9)
                                 (box? . 3)
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 (##null? . 1)
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 (gx#stx-box? . 8)
                                 #f
                                 #f
                                 #f)))
                         (if (symbol? _$e51383_)
                             (let* ((_h51421_
                                     (let ()
                                       (declare (not safe))
                                       (##symbol-hash _$e51383_)))
                                    (_ix51424_
                                     (let ()
                                       (declare (not safe))
                                       (##fxmodulo _h51421_ '63)))
                                    (_q51427_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _table5138651418_
                                        _ix51424_))))
                               (if _q51427_
                                   (if (eq? (let ()
                                              (declare (not safe))
                                              (##car _q51427_))
                                            _$e51383_)
                                       (let ((_x51431_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _q51427_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (##fx< _x51431_ '5))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fx< _x51431_ '2))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fx= _x51431_ '0))
                                                     'pair
                                                     'null)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fx= _x51431_ '2))
                                                     'vector
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fx= _x51431_ '3))
                                                         'box
                                                         'identifier)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fx< _x51431_ '7))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fx= _x51431_ '5))
                                                     'stx-pair
                                                     'stx-null)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fx= _x51431_ '7))
                                                     'stx-vector
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fx= _x51431_ '8))
                                                         'stx-box
                                                         'stx-datum)))))
                                       (_default5138551416_))
                                   (_default5138551416_)))
                             (_default5138551416_))))))
                  (_fold-assert-type46378_
                   (lambda (_expr50327_ _val50328_ _env50329_)
                     (let* ((___stx5429554296_ _expr50327_)
                            (_g5033750516_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx5429554296_))))
                       (let ((___kont5429754298_
                              (lambda (_L51348_ _L51349_)
                                (let ((_$e51371_
                                       (_predicate-type46377_ _L51349_)))
                                  (if _$e51371_
                                      ((lambda (_t51374_)
                                         (cons (cons _L51348_
                                                     (cons _t51374_
                                                           (cons _val50328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env50329_))
                                       _$e51371_)
                                      _env50329_))))
                             (___kont5429954300_
                              (lambda (_L51038_ _L51039_ _L51040_)
                                (let ((_$e51065_
                                       (gxc#identifier-symbol _L51040_)))
                                  (if (or (eq? '##fx= _$e51065_)
                                          (eq? 'fx= _$e51065_))
                                      (let* ((___stx5420154202_ _L51039_)
                                             (_g5107251101_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 ___stx5420154202_))))
                                        (let ((___kont5420354204_
                                               (lambda (_L51169_ _L51170_)
                                                 (let ((_$e51195_
                                                        (_countf-symbol46379_
                                                         _L51170_)))
                                                   (if _$e51195_
                                                       ((lambda (_sym51198_)
                                                          (cons (cons _L51169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _sym51198_
                                    (cons (gx#stx-e _L51038_)
                                          (cons _val50328_ '()))))
                        _env50329_))
                _$e51195_)
               _env50329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont5420554206_
                                               (lambda () _env50329_)))
                                          (if (gx#stx-pair? ___stx5420154202_)
                                              (let ((_e5107651113_
                                                     (gx#stx-e
                                                      ___stx5420154202_)))
                                                (let ((_tl5107851118_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5107651113_)))
                                                      (_hd5107751116_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5107651113_))))
                                                  (if (gx#identifier?
                                                       _hd5107751116_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd5107751116_)
                                                          (if (gx#stx-pair?
                                                               _tl5107851118_)
                                                              (let ((_e5107951121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl5107851118_)))
                        (let ((_tl5108151126_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5107951121_)))
                              (_hd5108051124_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5107951121_))))
                          (if (gx#stx-pair? _hd5108051124_)
                              (let ((_e5108251129_ (gx#stx-e _hd5108051124_)))
                                (let ((_tl5108451134_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5108251129_)))
                                      (_hd5108351132_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5108251129_))))
                                  (if (gx#identifier? _hd5108351132_)
                                      (if (gx#stx-eq? '%#ref _hd5108351132_)
                                          (if (gx#stx-pair? _tl5108451134_)
                                              (let ((_e5108551137_
                                                     (gx#stx-e
                                                      _tl5108451134_)))
                                                (let ((_tl5108751142_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5108551137_)))
                                                      (_hd5108651140_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5108551137_))))
                                                  (if (gx#stx-null?
                                                       _tl5108751142_)
                                                      (if (gx#stx-pair?
                                                           _tl5108151126_)
                                                          (let ((_e5108851145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl5108151126_)))
                    (let ((_tl5109051150_
                           (let () (declare (not safe)) (##cdr _e5108851145_)))
                          (_hd5108951148_
                           (let ()
                             (declare (not safe))
                             (##car _e5108851145_))))
                      (if (gx#stx-pair? _hd5108951148_)
                          (let ((_e5109151153_ (gx#stx-e _hd5108951148_)))
                            (let ((_tl5109351158_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5109151153_)))
                                  (_hd5109251156_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5109151153_))))
                              (if (gx#identifier? _hd5109251156_)
                                  (if (gx#stx-eq? '%#ref _hd5109251156_)
                                      (if (gx#stx-pair? _tl5109351158_)
                                          (let ((_e5109451161_
                                                 (gx#stx-e _tl5109351158_)))
                                            (let ((_tl5109651166_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e5109451161_)))
                                                  (_hd5109551164_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e5109451161_))))
                                              (if (gx#stx-null? _tl5109651166_)
                                                  (if (gx#stx-null?
                                                       _tl5109051150_)
                                                      (___kont5420354204_
                                                       _hd5109551164_
                                                       _hd5108651140_)
                                                      (___kont5420554206_))
                                                  (___kont5420554206_))))
                                          (___kont5420554206_))
                                      (___kont5420554206_))
                                  (___kont5420554206_))))
                          (___kont5420554206_))))
                  (___kont5420554206_))
              (___kont5420554206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont5420554206_))
                                          (___kont5420554206_))
                                      (___kont5420554206_))))
                              (___kont5420554206_))))
                      (___kont5420554206_))
                  (___kont5420554206_))
              (___kont5420554206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont5420554206_))))
                                      (if (or (eq? '##eq? _$e51065_)
                                              (eq? 'eq? _$e51065_)
                                              (eq? '##eqv? _$e51065_)
                                              (eq? 'eqv? _$e51065_)
                                              (eq? '##equal? _$e51065_)
                                              (eq? 'equal? _$e51065_)
                                              (eq? 'gx#free-identifier=?
                                                   _$e51065_)
                                              (eq? 'gx#stx-eq? _$e51065_))
                                          ((lambda (_sym51224_)
                                             (let* ((_sym51226_
                                                     (_eqf-symbol46380_
                                                      _sym51224_))
                                                    (___stx5426954270_
                                                     _L51039_)
                                                    (_g5122951242_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx5426954270_))))
                                               (let ((___kont5427154272_
                                                      (lambda (_L51270_)
                                                        (cons (cons _L51270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym51226_
                                  (cons (gx#stx-e _L51038_)
                                        (cons _val50328_ '()))))
                      _env50329_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5427354274_
                                                      (lambda () _env50329_)))
                                                 (if (gx#stx-pair?
                                                      ___stx5426954270_)
                                                     (let ((_e5123251254_
                                                            (gx#stx-e
                                                             ___stx5426954270_)))
                                                       (let ((_tl5123451259_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5123251254_)))
                     (_hd5123351257_
                      (let () (declare (not safe)) (##car _e5123251254_))))
                 (if (gx#identifier? _hd5123351257_)
                     (if (gx#stx-eq? '%#ref _hd5123351257_)
                         (if (gx#stx-pair? _tl5123451259_)
                             (let ((_e5123551262_ (gx#stx-e _tl5123451259_)))
                               (let ((_tl5123751267_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5123551262_)))
                                     (_hd5123651265_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5123551262_))))
                                 (if (gx#stx-null? _tl5123751267_)
                                     (___kont5427154272_ _hd5123651265_)
                                     (___kont5427354274_))))
                             (___kont5427354274_))
                         (___kont5427354274_))
                     (___kont5427354274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5427354274_)))))
                                           _$e51065_)
                                          _env50329_)))))
                             (___kont5430154302_
                              (lambda (_L50942_ _L50943_ _L50944_)
                                (_fold-assert-type46378_
                                 (cons (gx#datum->syntax__0 '#f '%#call)
                                       (cons (cons (gx#datum->syntax__0
                                                    '#f
                                                    '%#ref)
                                                   (cons _L50944_ '()))
                                             (cons _L50942_
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#quote)
                                                               (cons _L50943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _val50328_
                                 _env50329_)))
                             (___kont5430354304_
                              (lambda (_L50832_ _L50833_ _L50834_)
                                (let ((_$e50863_
                                       (gxc#identifier-symbol _L50834_)))
                                  (if (or (eq? 'gx#free-identifier=? _$e50863_)
                                          (eq? 'gx#stx-eq? _$e50863_))
                                      ((lambda (_sym50869_)
                                         (let ((_sym50871_
                                                (_eqf-symbol46380_
                                                 _sym50869_)))
                                           (cons (cons _L50833_
                                                       (cons _sym50871_
                                                             (cons _L50832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _val50328_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _env50329_)))
                                       _$e50863_)
                                      _env50329_))))
                             (___kont5430554306_
                              (lambda (_L50716_ _L50717_ _L50718_)
                                (_fold-assert-type46378_
                                 (cons (gx#datum->syntax__0 '#f '%#call)
                                       (cons (cons (gx#datum->syntax__0
                                                    '#f
                                                    '%#ref)
                                                   (cons _L50718_ '()))
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L50716_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#quote-syntax)
                                                               (cons _L50717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _val50328_
                                 _env50329_)))
                             (___kont5430754308_
                              (lambda (_L50600_ _L50601_ _L50602_)
                                (_fold-assert-type46378_
                                 (gxc#apply-expression-subst
                                  _L50601_
                                  _L50602_
                                  _L50600_)
                                 _val50328_
                                 _env50329_)))
                             (___kont5430954310_ (lambda () _env50329_)))
                         (if (gx#stx-pair? ___stx5429554296_)
                             (let ((_e5034151292_
                                    (gx#stx-e ___stx5429554296_)))
                               (let ((_tl5034351297_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5034151292_)))
                                     (_hd5034251295_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5034151292_))))
                                 (if (gx#identifier? _hd5034251295_)
                                     (if (gx#stx-eq? '%#call _hd5034251295_)
                                         (if (gx#stx-pair? _tl5034351297_)
                                             (let ((_e5034451300_
                                                    (gx#stx-e _tl5034351297_)))
                                               (let ((_tl5034651305_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5034451300_)))
                                                     (_hd5034551303_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5034451300_))))
                                                 (if (gx#stx-pair?
                                                      _hd5034551303_)
                                                     (let ((_e5034751308_
                                                            (gx#stx-e
                                                             _hd5034551303_)))
                                                       (let ((_tl5034951313_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5034751308_)))
                     (_hd5034851311_
                      (let () (declare (not safe)) (##car _e5034751308_))))
                 (if (gx#identifier? _hd5034851311_)
                     (if (gx#stx-eq? '%#ref _hd5034851311_)
                         (if (gx#stx-pair? _tl5034951313_)
                             (let ((_e5035051316_ (gx#stx-e _tl5034951313_)))
                               (let ((_tl5035251321_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5035051316_)))
                                     (_hd5035151319_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5035051316_))))
                                 (if (gx#stx-null? _tl5035251321_)
                                     (if (gx#stx-pair? _tl5034651305_)
                                         (let ((_e5035351324_
                                                (gx#stx-e _tl5034651305_)))
                                           (let ((_tl5035551329_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e5035351324_)))
                                                 (_hd5035451327_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e5035351324_))))
                                             (if (gx#stx-pair? _hd5035451327_)
                                                 (let ((_e5035651332_
                                                        (gx#stx-e
                                                         _hd5035451327_)))
                                                   (let ((_tl5035851337_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5035651332_)))
                                                         (_hd5035751335_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5035651332_))))
                                                     (if (gx#identifier?
                                                          _hd5035751335_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd5035751335_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl5035851337_)
                         (let ((_e5035951340_ (gx#stx-e _tl5035851337_)))
                           (let ((_tl5036151345_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e5035951340_)))
                                 (_hd5036051343_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e5035951340_))))
                             (if (gx#stx-null? _tl5036151345_)
                                 (if (gx#stx-null? _tl5035551329_)
                                     (___kont5429754298_
                                      _hd5036051343_
                                      _hd5035151319_)
                                     (if (gx#stx-pair? _tl5035551329_)
                                         (let ((_e5038051014_
                                                (gx#stx-e _tl5035551329_)))
                                           (let ((_tl5038251019_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e5038051014_)))
                                                 (_hd5038151017_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e5038051014_))))
                                             (if (gx#stx-pair? _hd5038151017_)
                                                 (let ((_e5038351022_
                                                        (gx#stx-e
                                                         _hd5038151017_)))
                                                   (let ((_tl5038551027_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5038351022_)))
                                                         (_hd5038451025_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5038351022_))))
                                                     (if (gx#identifier?
                                                          _hd5038451025_)
                                                         (if (gx#stx-eq?
                                                              '%#quote
                                                              _hd5038451025_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl5038551027_)
                         (let ((_e5038651030_ (gx#stx-e _tl5038551027_)))
                           (let ((_tl5038851035_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e5038651030_)))
                                 (_hd5038751033_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e5038651030_))))
                             (if (gx#stx-null? _tl5038851035_)
                                 (if (gx#stx-null? _tl5038251019_)
                                     (___kont5429954300_
                                      _hd5038751033_
                                      _hd5035451327_
                                      _hd5035151319_)
                                     (___kont5430954310_))
                                 (___kont5430954310_))))
                         (___kont5430954310_))
                     (if (gx#stx-eq? '%#quote-syntax _hd5038451025_)
                         (if (gx#stx-pair? _tl5038551027_)
                             (let ((_e5044650824_ (gx#stx-e _tl5038551027_)))
                               (let ((_tl5044850829_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5044650824_)))
                                     (_hd5044750827_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5044650824_))))
                                 (if (gx#stx-null? _tl5044850829_)
                                     (if (gx#stx-null? _tl5038251019_)
                                         (___kont5430354304_
                                          _hd5044750827_
                                          _hd5036051343_
                                          _hd5035151319_)
                                         (___kont5430954310_))
                                     (___kont5430954310_))))
                             (___kont5430954310_))
                         (___kont5430954310_)))
                 (___kont5430954310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont5430954310_))))
                                         (___kont5430954310_)))
                                 (if (gx#stx-pair? _tl5035551329_)
                                     (let ((_e5038051014_
                                            (gx#stx-e _tl5035551329_)))
                                       (let ((_tl5038251019_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5038051014_)))
                                             (_hd5038151017_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5038051014_))))
                                         (if (gx#stx-pair? _hd5038151017_)
                                             (let ((_e5038351022_
                                                    (gx#stx-e _hd5038151017_)))
                                               (let ((_tl5038551027_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5038351022_)))
                                                     (_hd5038451025_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5038351022_))))
                                                 (if (gx#identifier?
                                                      _hd5038451025_)
                                                     (if (gx#stx-eq?
                                                          '%#quote
                                                          _hd5038451025_)
                                                         (if (gx#stx-pair?
                                                              _tl5038551027_)
                                                             (let ((_e5038651030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl5038551027_)))
                       (let ((_tl5038851035_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5038651030_)))
                             (_hd5038751033_
                              (let ()
                                (declare (not safe))
                                (##car _e5038651030_))))
                         (if (gx#stx-null? _tl5038851035_)
                             (if (gx#stx-null? _tl5038251019_)
                                 (___kont5429954300_
                                  _hd5038751033_
                                  _hd5035451327_
                                  _hd5035151319_)
                                 (___kont5430954310_))
                             (___kont5430954310_))))
                     (___kont5430954310_))
                 (___kont5430954310_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5430954310_))))
                                             (___kont5430954310_))))
                                     (___kont5430954310_)))))
                         (if (gx#stx-pair? _tl5035551329_)
                             (let ((_e5038051014_ (gx#stx-e _tl5035551329_)))
                               (let ((_tl5038251019_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5038051014_)))
                                     (_hd5038151017_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5038051014_))))
                                 (if (gx#stx-pair? _hd5038151017_)
                                     (let ((_e5038351022_
                                            (gx#stx-e _hd5038151017_)))
                                       (let ((_tl5038551027_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5038351022_)))
                                             (_hd5038451025_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5038351022_))))
                                         (if (gx#identifier? _hd5038451025_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd5038451025_)
                                                 (if (gx#stx-pair?
                                                      _tl5038551027_)
                                                     (let ((_e5038651030_
                                                            (gx#stx-e
                                                             _tl5038551027_)))
                                                       (let ((_tl5038851035_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5038651030_)))
                     (_hd5038751033_
                      (let () (declare (not safe)) (##car _e5038651030_))))
                 (if (gx#stx-null? _tl5038851035_)
                     (if (gx#stx-null? _tl5038251019_)
                         (___kont5429954300_
                          _hd5038751033_
                          _hd5035451327_
                          _hd5035151319_)
                         (___kont5430954310_))
                     (___kont5430954310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5430954310_))
                                                 (___kont5430954310_))
                                             (___kont5430954310_))))
                                     (___kont5430954310_))))
                             (___kont5430954310_)))
                     (if (gx#stx-pair? _tl5035551329_)
                         (let ((_e5038051014_ (gx#stx-e _tl5035551329_)))
                           (let ((_tl5038251019_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e5038051014_)))
                                 (_hd5038151017_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e5038051014_))))
                             (if (gx#stx-pair? _hd5038151017_)
                                 (let ((_e5038351022_
                                        (gx#stx-e _hd5038151017_)))
                                   (let ((_tl5038551027_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5038351022_)))
                                         (_hd5038451025_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5038351022_))))
                                     (if (gx#identifier? _hd5038451025_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd5038451025_)
                                             (if (gx#stx-pair? _tl5038551027_)
                                                 (let ((_e5038651030_
                                                        (gx#stx-e
                                                         _tl5038551027_)))
                                                   (let ((_tl5038851035_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5038651030_)))
                                                         (_hd5038751033_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5038651030_))))
                                                     (if (gx#stx-null?
                                                          _tl5038851035_)
                                                         (if (gx#stx-null?
                                                              _tl5038251019_)
                                                             (___kont5429954300_
                                                              _hd5038751033_
                                                              _hd5035451327_
                                                              _hd5035151319_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#quote
                          _hd5035751335_)
                         (if (gx#stx-pair? _tl5035851337_)
                             (let ((_e5041050926_ (gx#stx-e _tl5035851337_)))
                               (let ((_tl5041250931_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5041050926_)))
                                     (_hd5041150929_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5041050926_))))
                                 (___kont5430954310_)))
                             (___kont5430954310_))
                         (if (gx#stx-eq? '%#quote-syntax _hd5035751335_)
                             (if (gx#stx-pair? _tl5035851337_)
                                 (let ((_e5047050684_
                                        (gx#stx-e _tl5035851337_)))
                                   (let ((_tl5047250689_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5047050684_)))
                                         (_hd5047150687_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5047050684_))))
                                     (___kont5430954310_)))
                                 (___kont5430954310_))
                             (___kont5430954310_))))
                 (if (gx#stx-eq? '%#quote _hd5035751335_)
                     (if (gx#stx-pair? _tl5035851337_)
                         (let ((_e5041050926_ (gx#stx-e _tl5035851337_)))
                           (let ((_tl5041250931_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e5041050926_)))
                                 (_hd5041150929_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e5041050926_))))
                             (if (gx#stx-null? _tl5041250931_)
                                 (if (gx#stx-null? _tl5038251019_)
                                     (___kont5430154302_
                                      _hd5038151017_
                                      _hd5041150929_
                                      _hd5035151319_)
                                     (___kont5430954310_))
                                 (___kont5430954310_))))
                         (___kont5430954310_))
                     (if (gx#stx-eq? '%#quote-syntax _hd5035751335_)
                         (if (gx#stx-pair? _tl5035851337_)
                             (let ((_e5047050684_ (gx#stx-e _tl5035851337_)))
                               (let ((_tl5047250689_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5047050684_)))
                                     (_hd5047150687_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5047050684_))))
                                 (___kont5430954310_)))
                             (___kont5430954310_))
                         (___kont5430954310_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-eq?
                                                      '%#quote
                                                      _hd5035751335_)
                                                     (if (gx#stx-pair?
                                                          _tl5035851337_)
                                                         (let ((_e5041050926_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl5035851337_)))
                   (let ((_tl5041250931_
                          (let () (declare (not safe)) (##cdr _e5041050926_)))
                         (_hd5041150929_
                          (let () (declare (not safe)) (##car _e5041050926_))))
                     (if (gx#stx-null? _tl5041250931_)
                         (if (gx#stx-null? _tl5038251019_)
                             (___kont5430154302_
                              _hd5038151017_
                              _hd5041150929_
                              _hd5035151319_)
                             (___kont5430954310_))
                         (___kont5430954310_))))
                 (___kont5430954310_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-eq?
                                                          '%#quote-syntax
                                                          _hd5035751335_)
                                                         (if (gx#stx-pair?
                                                              _tl5035851337_)
                                                             (let ((_e5047050684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl5035851337_)))
                       (let ((_tl5047250689_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5047050684_)))
                             (_hd5047150687_
                              (let ()
                                (declare (not safe))
                                (##car _e5047050684_))))
                         (___kont5430954310_)))
                     (___kont5430954310_))
                 (___kont5430954310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd5035751335_)
                                                 (if (gx#stx-pair?
                                                      _tl5035851337_)
                                                     (let ((_e5041050926_
                                                            (gx#stx-e
                                                             _tl5035851337_)))
                                                       (let ((_tl5041250931_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5041050926_)))
                     (_hd5041150929_
                      (let () (declare (not safe)) (##car _e5041050926_))))
                 (if (gx#stx-null? _tl5041250931_)
                     (if (gx#stx-null? _tl5038251019_)
                         (___kont5430154302_
                          _hd5038151017_
                          _hd5041150929_
                          _hd5035151319_)
                         (___kont5430954310_))
                     (___kont5430954310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5430954310_))
                                                 (if (gx#stx-eq?
                                                      '%#quote-syntax
                                                      _hd5035751335_)
                                                     (if (gx#stx-pair?
                                                          _tl5035851337_)
                                                         (let ((_e5047050684_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl5035851337_)))
                   (let ((_tl5047250689_
                          (let () (declare (not safe)) (##cdr _e5047050684_)))
                         (_hd5047150687_
                          (let () (declare (not safe)) (##car _e5047050684_))))
                     (if (gx#stx-null? _tl5047250689_)
                         (if (gx#stx-eq? '%#ref _hd5038451025_)
                             (if (gx#stx-pair? _tl5038551027_)
                                 (let ((_e5047950708_
                                        (gx#stx-e _tl5038551027_)))
                                   (let ((_tl5048150713_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5047950708_)))
                                         (_hd5048050711_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5047950708_))))
                                     (if (gx#stx-null? _tl5048150713_)
                                         (if (gx#stx-null? _tl5038251019_)
                                             (___kont5430554306_
                                              _hd5048050711_
                                              _hd5047150687_
                                              _hd5035151319_)
                                             (___kont5430954310_))
                                         (___kont5430954310_))))
                                 (___kont5430954310_))
                             (___kont5430954310_))
                         (___kont5430954310_))))
                 (___kont5430954310_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5430954310_))))
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd5035751335_)
                                             (if (gx#stx-pair? _tl5035851337_)
                                                 (let ((_e5041050926_
                                                        (gx#stx-e
                                                         _tl5035851337_)))
                                                   (let ((_tl5041250931_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5041050926_)))
                                                         (_hd5041150929_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5041050926_))))
                                                     (if (gx#stx-null?
                                                          _tl5041250931_)
                                                         (if (gx#stx-null?
                                                              _tl5038251019_)
                                                             (___kont5430154302_
                                                              _hd5038151017_
                                                              _hd5041150929_
                                                              _hd5035151319_)
                                                             (___kont5430954310_))
                                                         (___kont5430954310_))))
                                                 (___kont5430954310_))
                                             (if (gx#stx-eq?
                                                  '%#quote-syntax
                                                  _hd5035751335_)
                                                 (if (gx#stx-pair?
                                                      _tl5035851337_)
                                                     (let ((_e5047050684_
                                                            (gx#stx-e
                                                             _tl5035851337_)))
                                                       (let ((_tl5047250689_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5047050684_)))
                     (_hd5047150687_
                      (let () (declare (not safe)) (##car _e5047050684_))))
                 (___kont5430954310_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5430954310_))
                                                 (___kont5430954310_))))))
                                 (if (gx#stx-eq? '%#quote _hd5035751335_)
                                     (if (gx#stx-pair? _tl5035851337_)
                                         (let ((_e5041050926_
                                                (gx#stx-e _tl5035851337_)))
                                           (let ((_tl5041250931_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e5041050926_)))
                                                 (_hd5041150929_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e5041050926_))))
                                             (if (gx#stx-null? _tl5041250931_)
                                                 (if (gx#stx-null?
                                                      _tl5038251019_)
                                                     (___kont5430154302_
                                                      _hd5038151017_
                                                      _hd5041150929_
                                                      _hd5035151319_)
                                                     (___kont5430954310_))
                                                 (___kont5430954310_))))
                                         (___kont5430954310_))
                                     (if (gx#stx-eq?
                                          '%#quote-syntax
                                          _hd5035751335_)
                                         (if (gx#stx-pair? _tl5035851337_)
                                             (let ((_e5047050684_
                                                    (gx#stx-e _tl5035851337_)))
                                               (let ((_tl5047250689_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5047050684_)))
                                                     (_hd5047150687_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5047050684_))))
                                                 (___kont5430954310_)))
                                             (___kont5430954310_))
                                         (___kont5430954310_))))))
                         (if (gx#stx-eq? '%#quote _hd5035751335_)
                             (if (gx#stx-pair? _tl5035851337_)
                                 (let ((_e5041050926_
                                        (gx#stx-e _tl5035851337_)))
                                   (let ((_tl5041250931_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5041050926_)))
                                         (_hd5041150929_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5041050926_))))
                                     (___kont5430954310_)))
                                 (___kont5430954310_))
                             (if (gx#stx-eq? '%#quote-syntax _hd5035751335_)
                                 (if (gx#stx-pair? _tl5035851337_)
                                     (let ((_e5047050684_
                                            (gx#stx-e _tl5035851337_)))
                                       (let ((_tl5047250689_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5047050684_)))
                                             (_hd5047150687_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5047050684_))))
                                         (___kont5430954310_)))
                                     (___kont5430954310_))
                                 (___kont5430954310_)))))
                 (if (gx#stx-pair? _tl5035551329_)
                     (let ((_e5038051014_ (gx#stx-e _tl5035551329_)))
                       (let ((_tl5038251019_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5038051014_)))
                             (_hd5038151017_
                              (let ()
                                (declare (not safe))
                                (##car _e5038051014_))))
                         (if (gx#stx-pair? _hd5038151017_)
                             (let ((_e5038351022_ (gx#stx-e _hd5038151017_)))
                               (let ((_tl5038551027_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5038351022_)))
                                     (_hd5038451025_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5038351022_))))
                                 (if (gx#identifier? _hd5038451025_)
                                     (if (gx#stx-eq? '%#quote _hd5038451025_)
                                         (if (gx#stx-pair? _tl5038551027_)
                                             (let ((_e5038651030_
                                                    (gx#stx-e _tl5038551027_)))
                                               (let ((_tl5038851035_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5038651030_)))
                                                     (_hd5038751033_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5038651030_))))
                                                 (if (gx#stx-null?
                                                      _tl5038851035_)
                                                     (if (gx#stx-null?
                                                          _tl5038251019_)
                                                         (___kont5429954300_
                                                          _hd5038751033_
                                                          _hd5035451327_
                                                          _hd5035151319_)
                                                         (___kont5430954310_))
                                                     (___kont5430954310_))))
                                             (___kont5430954310_))
                                         (___kont5430954310_))
                                     (___kont5430954310_))))
                             (___kont5430954310_))))
                     (___kont5430954310_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl5035551329_)
                                                     (let ((_e5038051014_
                                                            (gx#stx-e
                                                             _tl5035551329_)))
                                                       (let ((_tl5038251019_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5038051014_)))
                     (_hd5038151017_
                      (let () (declare (not safe)) (##car _e5038051014_))))
                 (if (gx#stx-pair? _hd5038151017_)
                     (let ((_e5038351022_ (gx#stx-e _hd5038151017_)))
                       (let ((_tl5038551027_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5038351022_)))
                             (_hd5038451025_
                              (let ()
                                (declare (not safe))
                                (##car _e5038351022_))))
                         (if (gx#identifier? _hd5038451025_)
                             (if (gx#stx-eq? '%#quote _hd5038451025_)
                                 (if (gx#stx-pair? _tl5038551027_)
                                     (let ((_e5038651030_
                                            (gx#stx-e _tl5038551027_)))
                                       (let ((_tl5038851035_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5038651030_)))
                                             (_hd5038751033_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5038651030_))))
                                         (if (gx#stx-null? _tl5038851035_)
                                             (if (gx#stx-null? _tl5038251019_)
                                                 (___kont5429954300_
                                                  _hd5038751033_
                                                  _hd5035451327_
                                                  _hd5035151319_)
                                                 (___kont5430954310_))
                                             (___kont5430954310_))))
                                     (___kont5430954310_))
                                 (___kont5430954310_))
                             (___kont5430954310_))))
                     (___kont5430954310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5430954310_)))))
                                         (___kont5430954310_))
                                     (___kont5430954310_))))
                             (___kont5430954310_))
                         (if (gx#stx-eq? '%#lambda _hd5034851311_)
                             (if (gx#stx-pair? _tl5034951313_)
                                 (let ((_e5049450552_
                                        (gx#stx-e _tl5034951313_)))
                                   (let ((_tl5049650557_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5049450552_)))
                                         (_hd5049550555_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5049450552_))))
                                     (if (gx#stx-pair? _hd5049550555_)
                                         (let ((_e5049750560_
                                                (gx#stx-e _hd5049550555_)))
                                           (let ((_tl5049950565_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e5049750560_)))
                                                 (_hd5049850563_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e5049750560_))))
                                             (if (gx#stx-null? _tl5049950565_)
                                                 (if (gx#stx-pair?
                                                      _tl5049650557_)
                                                     (let ((_e5050050568_
                                                            (gx#stx-e
                                                             _tl5049650557_)))
                                                       (let ((_tl5050250573_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5050050568_)))
                     (_hd5050150571_
                      (let () (declare (not safe)) (##car _e5050050568_))))
                 (if (gx#stx-null? _tl5050250573_)
                     (if (gx#stx-pair? _tl5034651305_)
                         (let ((_e5050350576_ (gx#stx-e _tl5034651305_)))
                           (let ((_tl5050550581_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e5050350576_)))
                                 (_hd5050450579_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e5050350576_))))
                             (if (gx#stx-pair? _hd5050450579_)
                                 (let ((_e5050650584_
                                        (gx#stx-e _hd5050450579_)))
                                   (let ((_tl5050850589_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5050650584_)))
                                         (_hd5050750587_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5050650584_))))
                                     (if (gx#identifier? _hd5050750587_)
                                         (if (gx#stx-eq? '%#ref _hd5050750587_)
                                             (if (gx#stx-pair? _tl5050850589_)
                                                 (let ((_e5050950592_
                                                        (gx#stx-e
                                                         _tl5050850589_)))
                                                   (let ((_tl5051150597_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5050950592_)))
                                                         (_hd5051050595_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5050950592_))))
                                                     (if (gx#stx-null?
                                                          _tl5051150597_)
                                                         (if (gx#stx-null?
                                                              _tl5050550581_)
                                                             (___kont5430754308_
                                                              _hd5051050595_
                                                              _hd5050150571_
                                                              _hd5049850563_)
                                                             (___kont5430954310_))
                                                         (___kont5430954310_))))
                                                 (___kont5430954310_))
                                             (___kont5430954310_))
                                         (___kont5430954310_))))
                                 (___kont5430954310_))))
                         (___kont5430954310_))
                     (___kont5430954310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5430954310_))
                                                 (___kont5430954310_))))
                                         (___kont5430954310_))))
                                 (___kont5430954310_))
                             (___kont5430954310_)))
                     (___kont5430954310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5430954310_))))
                                             (___kont5430954310_))
                                         (___kont5430954310_))
                                     (___kont5430954310_))))
                             (___kont5430954310_))))))
                  (_countf-symbol46379_
                   (lambda (_id50319_)
                     (let ((_$e50321_ (gxc#identifier-symbol _id50319_)))
                       (if (or (eq? '##vector-length _$e50321_)
                               (eq? 'vector-length _$e50321_))
                           'vector-length
                           (if (eq? 'values-count _$e50321_)
                               'values-count
                               '#f)))))
                  (_eqf-symbol46380_
                   (lambda (_sym50305_)
                     (let ((_$e50307_ _sym50305_))
                       (if (or (eq? '##eq? _$e50307_) (eq? 'eq? _$e50307_))
                           'eq?
                           (if (or (eq? '##eqv? _$e50307_)
                                   (eq? 'eqv? _$e50307_))
                               'eqv?
                               (if (or (eq? '##equal? _$e50307_)
                                       (eq? 'equal? _$e50307_))
                                   'equal?
                                   (if (eq? 'gx#free-identifier=? _$e50307_)
                                       'free-identifier=?
                                       (if (eq? 'gx#stx-eq? _$e50307_)
                                           'stx-eq?
                                           '#f))))))))
                  (_eqf-symbol?46381_
                   (lambda (_sym50288_)
                     (let ((_$e50290_ _sym50288_))
                       (if (or (eq? 'eq? _$e50290_)
                               (eq? 'eqv? _$e50290_)
                               (eq? 'equal? _$e50290_)
                               (eq? 'free-identifier=? _$e50290_)
                               (eq? 'stx-eq? _$e50290_))
                           '#t
                           '#f))))
                  (_do-assert!46382_
                   (lambda (_assert50279_ _type50280_ _K50281_)
                     (let ((_unwind-assert50283_ _env-assert46372_)
                           (_unwind-type50284_ _env-type46373_))
                       (set! _env-assert46372_ _assert50279_)
                       (set! _env-type46373_ _type50280_)
                       (let ((_val50286_ (_K50281_)))
                         (set! _env-assert46372_ _unwind-assert50283_)
                         (set! _env-type46373_ _unwind-type50284_)
                         _val50286_))))
                  (_do-bind46383_
                   (lambda (_bind50276_ _K50277_)
                     (if (pair? _bind50276_)
                         (_do-bind!46385_
                          (_fold-bind-env46384_ _bind50276_ _env-bind46374_)
                          _K50277_)
                         (_K50277_))))
                  (_fold-bind-env46384_
                   (lambda (_bind50205_ _env50206_)
                     (let _lp50208_ ((_rest50210_ _bind50205_)
                                     (_env50211_ _env50206_))
                       (let* ((_rest5021250220_ _rest50210_)
                              (_else5021450228_ (lambda () _env50211_))
                              (_K5021650264_
                               (lambda (_rest50231_ _bind50232_)
                                 (let* ((_bind5023350240_ _bind50232_)
                                        (_E5023550244_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _bind5023350240_)))
                                        (_K5023650252_
                                         (lambda (_expr50247_ _id50248_)
                                           (let ((_sexpr50250_
                                                  (gxc#apply-generate-runtime-repr
                                                   _expr50247_)))
                                             (_lp50208_
                                              _rest50231_
                                              (cons (cons _sexpr50250_
                                                          _id50248_)
                                                    _env50211_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _bind5023350240_))
                                       (let ((_hd5023750255_
                                              (let ()
                                                (declare (not safe))
                                                (##car _bind5023350240_)))
                                             (_tl5023850257_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _bind5023350240_))))
                                         (let* ((_id50260_ _hd5023750255_)
                                                (_expr50262_ _tl5023850257_))
                                           (_K5023650252_
                                            _expr50262_
                                            _id50260_)))
                                       (_E5023550244_))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest5021250220_))
                             (let ((_hd5021750267_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest5021250220_)))
                                   (_tl5021850269_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest5021250220_))))
                               (let* ((_bind50272_ _hd5021750267_)
                                      (_rest50274_ _tl5021850269_))
                                 (_K5021650264_ _rest50274_ _bind50272_)))
                             (_else5021450228_))))))
                  (_do-bind!46385_
                   (lambda (_env50198_ _K50199_)
                     (let ((_unwind50201_ _env-bind46374_))
                       (set! _env-bind46374_ _env50198_)
                       (let ((_val50203_ (_K50199_)))
                         (set! _env-bind46374_ _unwind50201_)
                         _val50203_))))
                  (_do-splice!46386_
                   (lambda (_K50192_)
                     (let ((_unwind50194_ _in-splice?46375_))
                       (set! _in-splice?46375_ '#t)
                       (let ((_val50196_ (_K50192_)))
                         (set! _in-splice?46375_ _unwind50194_)
                         _val50196_))))
                  (_optimize-e46387_
                   (lambda (_expr49389_)
                     (let* ((___stx5474754748_ _expr49389_)
                            (_g4939649569_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx5474754748_))))
                       (let ((___kont5474954750_
                              (lambda (_L50164_ _L50165_ _L50166_)
                                (let ((_$e50183_ (_assert-e46390_ _L50166_)))
                                  (if (eq? '#t _$e50183_)
                                      (_optimize-e46387_ _L50165_)
                                      (if (eq? '#f _$e50183_)
                                          (_optimize-e46387_ _L50164_)
                                          (let ((_K50186_
                                                 (_optimize-t__0__5371053711_
                                                  _L50165_
                                                  _L50166_))
                                                (_E50187_
                                                 (_optimize-f__5371253713_
                                                  _L50164_
                                                  _L50166_)))
                                            (if (equal? (gxc#apply-generate-runtime-repr
                                                         _K50186_)
                                                        (gxc#apply-generate-runtime-repr
                                                         _E50187_))
                                                _K50186_
                                                (cons '%#if
                                                      (cons _L50166_
                                                            (cons _K50186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _E50187_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (___kont5475154752_
                              (lambda (_L50094_ _L50095_)
                                (let ((_$e50115_
                                       (_lookup-block46395_ _L50095_)))
                                  (if _$e50115_
                                      ((lambda (_block50118_)
                                         (if (_nonlinear-block?46397_
                                              _block50118_)
                                             _expr49389_
                                             (_optimize-e46387_
                                              (_inline-block46396_
                                               _block50118_
                                               (foldr1 (lambda (_g5011950122_
                                                                _g5012050124_)
                                                         (cons _g5011950122_
                                                               _g5012050124_))
                                                       '()
                                                       _L50094_)))))
                                       _$e50115_)
                                      _expr49389_))))
                             (___kont5475554756_
                              (lambda (_L49984_ _L49985_ _L49986_)
                                (let ((_body50005_
                                       (_optimize-e46387_ _L49984_)))
                                  (cons '%#let-values
                                        (cons (begin
                                                (gx#syntax-check-splice-targets
                                                 _L49985_
                                                 _L49986_)
                                                (foldr2 (lambda (_g5000650010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g5000750012_
                         _g5000850014_)
                  (cons (cons (cons _g5000750012_ '())
                              (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _g5000650010_ '()))
                                    '()))
                        _g5000850014_))
                '()
                _L49985_
                _L49986_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _body50005_ '()))))))
                             (___kont5475954760_
                              (lambda (_L49852_ _L49853_ _L49854_)
                                (_bind-e__0__5371853719_
                                 (map cons
                                      (foldr1 (lambda (_g4987249875_
                                                       _g4987349877_)
                                                (cons _g4987249875_
                                                      _g4987349877_))
                                              '()
                                              _L49854_)
                                      (foldr1 (lambda (_g4987949882_
                                                       _g4988049884_)
                                                (cons _g4987949882_
                                                      _g4988049884_))
                                              '()
                                              _L49853_))
                                 _L49852_)))
                             (___kont5476354764_
                              (lambda (_L49709_
                                       _L49710_
                                       _L49711_
                                       _L49712_
                                       _L49713_)
                                (_do-splice!46386_
                                 (lambda ()
                                   (let ((_expr49755_
                                          (_optimize-e46387_ _L49711_)))
                                     (cons '%#letrec-values
                                           (cons (cons (cons (cons _L49713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (cons '%#lambda
                                 (cons (foldr1 (lambda (_g4975649759_
                                                        _g4975749761_)
                                                 (cons _g4975649759_
                                                       _g4975749761_))
                                               '()
                                               _L49712_)
                                       (cons _expr49755_ '())))
                           '()))
               (foldr1 (lambda (_g4976349766_ _g4976449768_)
                         (cons _g4976349766_ _g4976449768_))
                       '()
                       _L49710_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L49709_ '()))))))))
                             (___kont5476954770_ (lambda () _expr49389_)))
                         (let* ((___match5495654957_
                                 (lambda (_e4951749581_
                                          _hd4951849584_
                                          _tl4951949586_
                                          _e4952049589_
                                          _hd4952149592_
                                          _tl4952249594_
                                          _e4952349597_
                                          _hd4952449600_
                                          _tl4952549602_
                                          _e4952649605_
                                          _hd4952749608_
                                          _tl4952849610_
                                          _e4952949613_
                                          _hd4953049616_
                                          _tl4953149618_
                                          _e4953249621_
                                          _hd4953349624_
                                          _tl4953449626_
                                          _e4953549629_
                                          _hd4953649632_
                                          _tl4953749634_
                                          _e4953849637_
                                          _hd4953949640_
                                          _tl4954049642_
                                          ___splice5476554766_
                                          _target4954149645_
                                          _tl4954349647_)
                                   (letrec ((_loop4954449650_
                                             (lambda (_hd4954249653_
                                                      _id4954849655_)
                                               (if (gx#stx-pair?
                                                    _hd4954249653_)
                                                   (let ((_e4954549658_
                                                          (gx#stx-e
                                                           _hd4954249653_)))
                                                     (let ((_lp-tl4954749663_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4954549658_)))
                                                           (_lp-hd4954649661_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4954549658_))))
                                                       (_loop4954449650_
                                                        _lp-tl4954749663_
                                                        (cons _lp-hd4954649661_
                                                              _id4954849655_))))
                                                   (let ((_id4954949666_
                                                          (reverse _id4954849655_)))
                                                     (if (gx#stx-pair?
                                                          _tl4954049642_)
                                                         (let ((_e4955049669_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4954049642_)))
                   (let ((_tl4955249674_
                          (let () (declare (not safe)) (##cdr _e4955049669_)))
                         (_hd4955149672_
                          (let () (declare (not safe)) (##car _e4955049669_))))
                     (if (gx#stx-null? _tl4955249674_)
                         (if (gx#stx-null? _tl4953449626_)
                             (if (gx#stx-pair/null? _tl4952549602_)
                                 (let ((___splice5476754768_
                                        (gx#syntax-split-splice
                                         _tl4952549602_
                                         '0)))
                                   (let ((_tl4955549679_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             ___splice5476754768_
                                             '1)))
                                         (_target4955349677_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             ___splice5476754768_
                                             '0))))
                                     (if (gx#stx-null? _tl4955549679_)
                                         (letrec ((_loop4955649682_
                                                   (lambda (_hd4955449685_
                                                            _bind4956049687_)
                                                     (if (gx#stx-pair?
                                                          _hd4955449685_)
                                                         (let ((_e4955749690_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4955449685_)))
                   (let ((_lp-tl4955949695_
                          (let () (declare (not safe)) (##cdr _e4955749690_)))
                         (_lp-hd4955849693_
                          (let () (declare (not safe)) (##car _e4955749690_))))
                     (_loop4955649682_
                      _lp-tl4955949695_
                      (cons _lp-hd4955849693_ _bind4956049687_))))
                 (let ((_bind4956149698_ (reverse _bind4956049687_)))
                   (if (gx#stx-pair? _tl4952249594_)
                       (let ((_e4956249701_ (gx#stx-e _tl4952249594_)))
                         (let ((_tl4956449706_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4956249701_)))
                               (_hd4956349704_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4956249701_))))
                           (if (gx#stx-null? _tl4956449706_)
                               (___kont5476354764_
                                _hd4956349704_
                                _bind4956149698_
                                _hd4955149672_
                                _id4954949666_
                                _hd4953049616_)
                               (___kont5476954770_))))
                       (___kont5476954770_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop4955649682_
                                            _target4955349677_
                                            '()))
                                         (___kont5476954770_))))
                                 (___kont5476954770_))
                             (___kont5476954770_))
                         (___kont5476954770_))))
                 (___kont5476954770_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop4954449650_
                                      _target4954149645_
                                      '()))))
                                (___match5489054891_
                                 (lambda (_e4948349776_
                                          _hd4948449779_
                                          _tl4948549781_
                                          _e4948649784_
                                          _hd4948749787_
                                          _tl4948849789_
                                          ___splice5476154762_
                                          _target4948949792_
                                          _tl4949149794_)
                                   (letrec ((_loop4949249797_
                                             (lambda (_hd4949049800_
                                                      _expr4949649802_
                                                      _id4949749804_)
                                               (if (gx#stx-pair?
                                                    _hd4949049800_)
                                                   (let ((_e4949349807_
                                                          (gx#stx-e
                                                           _hd4949049800_)))
                                                     (let ((_lp-tl4949549812_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4949349807_)))
                                                           (_lp-hd4949449810_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4949349807_))))
                                                       (if (gx#stx-pair?
                                                            _lp-hd4949449810_)
                                                           (let ((_e4950049815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _lp-hd4949449810_)))
                     (let ((_tl4950249820_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4950049815_)))
                           (_hd4950149818_
                            (let ()
                              (declare (not safe))
                              (##car _e4950049815_))))
                       (if (gx#stx-pair? _hd4950149818_)
                           (let ((_e4950349823_ (gx#stx-e _hd4950149818_)))
                             (let ((_tl4950549828_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4950349823_)))
                                   (_hd4950449826_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4950349823_))))
                               (if (gx#stx-null? _tl4950549828_)
                                   (if (gx#stx-pair? _tl4950249820_)
                                       (let ((_e4950649831_
                                              (gx#stx-e _tl4950249820_)))
                                         (let ((_tl4950849836_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4950649831_)))
                                               (_hd4950749834_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4950649831_))))
                                           (if (gx#stx-null? _tl4950849836_)
                                               (_loop4949249797_
                                                _lp-tl4949549812_
                                                (cons _hd4950749834_
                                                      _expr4949649802_)
                                                (cons _hd4950449826_
                                                      _id4949749804_))
                                               (___kont5476954770_))))
                                       (___kont5476954770_))
                                   (___kont5476954770_))))
                           (___kont5476954770_))))
                   (___kont5476954770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_id4949949841_
                                                          (reverse _id4949749804_))
                                                         (_expr4949849839_
                                                          (reverse _expr4949649802_)))
                                                     (if (gx#stx-pair?
                                                          _tl4948849789_)
                                                         (let ((_e4950949844_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4948849789_)))
                   (let ((_tl4951149849_
                          (let () (declare (not safe)) (##cdr _e4950949844_)))
                         (_hd4951049847_
                          (let () (declare (not safe)) (##car _e4950949844_))))
                     (if (gx#stx-null? _tl4951149849_)
                         (___kont5475954760_
                          _hd4951049847_
                          _expr4949849839_
                          _id4949949841_)
                         (___kont5476954770_))))
                 (___kont5476954770_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop4949249797_
                                      _target4948949792_
                                      '()
                                      '()))))
                                (___match5486654867_
                                 (lambda (_e4944549892_
                                          _hd4944649895_
                                          _tl4944749897_
                                          _e4944849900_
                                          _hd4944949903_
                                          _tl4945049905_
                                          ___splice5475754758_
                                          _target4945149908_
                                          _tl4945349910_)
                                   (letrec ((_loop4945449913_
                                             (lambda (_hd4945249916_
                                                      _xid4945849918_
                                                      _id4945949920_)
                                               (if (gx#stx-pair?
                                                    _hd4945249916_)
                                                   (let ((_e4945549923_
                                                          (gx#stx-e
                                                           _hd4945249916_)))
                                                     (let ((_lp-tl4945749928_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4945549923_)))
                                                           (_lp-hd4945649926_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4945549923_))))
                                                       (if (gx#stx-pair?
                                                            _lp-hd4945649926_)
                                                           (let ((_e4946249931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _lp-hd4945649926_)))
                     (let ((_tl4946449936_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4946249931_)))
                           (_hd4946349934_
                            (let ()
                              (declare (not safe))
                              (##car _e4946249931_))))
                       (if (gx#stx-pair? _hd4946349934_)
                           (let ((_e4946549939_ (gx#stx-e _hd4946349934_)))
                             (let ((_tl4946749944_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4946549939_)))
                                   (_hd4946649942_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4946549939_))))
                               (if (gx#stx-null? _tl4946749944_)
                                   (if (gx#stx-pair? _tl4946449936_)
                                       (let ((_e4946849947_
                                              (gx#stx-e _tl4946449936_)))
                                         (let ((_tl4947049952_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4946849947_)))
                                               (_hd4946949950_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4946849947_))))
                                           (if (gx#stx-pair? _hd4946949950_)
                                               (let ((_e4947149955_
                                                      (gx#stx-e
                                                       _hd4946949950_)))
                                                 (let ((_tl4947349960_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4947149955_)))
                                                       (_hd4947249958_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4947149955_))))
                                                   (if (gx#identifier?
                                                        _hd4947249958_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd4947249958_)
                                                           (if (gx#stx-pair?
                                                                _tl4947349960_)
                                                               (let ((_e4947449963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl4947349960_)))
                         (let ((_tl4947649968_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4947449963_)))
                               (_hd4947549966_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4947449963_))))
                           (if (gx#stx-null? _tl4947649968_)
                               (if (gx#stx-null? _tl4947049952_)
                                   (_loop4945449913_
                                    _lp-tl4945749928_
                                    (cons _hd4947549966_ _xid4945849918_)
                                    (cons _hd4946649942_ _id4945949920_))
                                   (___match5489054891_
                                    _e4944549892_
                                    _hd4944649895_
                                    _tl4944749897_
                                    _e4944849900_
                                    _hd4944949903_
                                    _tl4945049905_
                                    ___splice5475754758_
                                    _target4945149908_
                                    _tl4945349910_))
                               (___match5489054891_
                                _e4944549892_
                                _hd4944649895_
                                _tl4944749897_
                                _e4944849900_
                                _hd4944949903_
                                _tl4945049905_
                                ___splice5475754758_
                                _target4945149908_
                                _tl4945349910_))))
                       (___match5489054891_
                        _e4944549892_
                        _hd4944649895_
                        _tl4944749897_
                        _e4944849900_
                        _hd4944949903_
                        _tl4945049905_
                        ___splice5475754758_
                        _target4945149908_
                        _tl4945349910_))
                   (___match5489054891_
                    _e4944549892_
                    _hd4944649895_
                    _tl4944749897_
                    _e4944849900_
                    _hd4944949903_
                    _tl4945049905_
                    ___splice5475754758_
                    _target4945149908_
                    _tl4945349910_))
               (___match5489054891_
                _e4944549892_
                _hd4944649895_
                _tl4944749897_
                _e4944849900_
                _hd4944949903_
                _tl4945049905_
                ___splice5475754758_
                _target4945149908_
                _tl4945349910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___match5489054891_
                                                _e4944549892_
                                                _hd4944649895_
                                                _tl4944749897_
                                                _e4944849900_
                                                _hd4944949903_
                                                _tl4945049905_
                                                ___splice5475754758_
                                                _target4945149908_
                                                _tl4945349910_))))
                                       (___match5489054891_
                                        _e4944549892_
                                        _hd4944649895_
                                        _tl4944749897_
                                        _e4944849900_
                                        _hd4944949903_
                                        _tl4945049905_
                                        ___splice5475754758_
                                        _target4945149908_
                                        _tl4945349910_))
                                   (___match5489054891_
                                    _e4944549892_
                                    _hd4944649895_
                                    _tl4944749897_
                                    _e4944849900_
                                    _hd4944949903_
                                    _tl4945049905_
                                    ___splice5475754758_
                                    _target4945149908_
                                    _tl4945349910_))))
                           (___match5489054891_
                            _e4944549892_
                            _hd4944649895_
                            _tl4944749897_
                            _e4944849900_
                            _hd4944949903_
                            _tl4945049905_
                            ___splice5475754758_
                            _target4945149908_
                            _tl4945349910_))))
                   (___match5489054891_
                    _e4944549892_
                    _hd4944649895_
                    _tl4944749897_
                    _e4944849900_
                    _hd4944949903_
                    _tl4945049905_
                    ___splice5475754758_
                    _target4945149908_
                    _tl4945349910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_id4946149973_
                                                          (reverse _id4945949920_))
                                                         (_xid4946049971_
                                                          (reverse _xid4945849918_)))
                                                     (if (gx#stx-pair?
                                                          _tl4945049905_)
                                                         (let ((_e4947749976_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4945049905_)))
                   (let ((_tl4947949981_
                          (let () (declare (not safe)) (##cdr _e4947749976_)))
                         (_hd4947849979_
                          (let () (declare (not safe)) (##car _e4947749976_))))
                     (if (gx#stx-null? _tl4947949981_)
                         (___kont5475554756_
                          _hd4947849979_
                          _xid4946049971_
                          _id4946149973_)
                         (___match5489054891_
                          _e4944549892_
                          _hd4944649895_
                          _tl4944749897_
                          _e4944849900_
                          _hd4944949903_
                          _tl4945049905_
                          ___splice5475754758_
                          _target4945149908_
                          _tl4945349910_))))
                 (___match5489054891_
                  _e4944549892_
                  _hd4944649895_
                  _tl4944749897_
                  _e4944849900_
                  _hd4944949903_
                  _tl4945049905_
                  ___splice5475754758_
                  _target4945149908_
                  _tl4945349910_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop4945449913_
                                      _target4945149908_
                                      '()
                                      '()))))
                                (___match5484254843_
                                 (lambda (_e4941550022_
                                          _hd4941650025_
                                          _tl4941750027_
                                          _e4941850030_
                                          _hd4941950033_
                                          _tl4942050035_
                                          _e4942150038_
                                          _hd4942250041_
                                          _tl4942350043_
                                          _e4942450046_
                                          _hd4942550049_
                                          _tl4942650051_
                                          ___splice5475354754_
                                          _target4942750054_
                                          _tl4942950056_)
                                   (letrec ((_loop4943050059_
                                             (lambda (_hd4942850062_
                                                      _id4943450064_)
                                               (if (gx#stx-pair?
                                                    _hd4942850062_)
                                                   (let ((_e4943150067_
                                                          (gx#stx-e
                                                           _hd4942850062_)))
                                                     (let ((_lp-tl4943350072_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4943150067_)))
                                                           (_lp-hd4943250070_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4943150067_))))
                                                       (if (gx#stx-pair?
                                                            _lp-hd4943250070_)
                                                           (let ((_e4943650075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _lp-hd4943250070_)))
                     (let ((_tl4943850080_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4943650075_)))
                           (_hd4943750078_
                            (let ()
                              (declare (not safe))
                              (##car _e4943650075_))))
                       (if (gx#identifier? _hd4943750078_)
                           (if (gx#stx-eq? '%#ref _hd4943750078_)
                               (if (gx#stx-pair? _tl4943850080_)
                                   (let ((_e4943950083_
                                          (gx#stx-e _tl4943850080_)))
                                     (let ((_tl4944150088_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4943950083_)))
                                           (_hd4944050086_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4943950083_))))
                                       (if (gx#stx-null? _tl4944150088_)
                                           (_loop4943050059_
                                            _lp-tl4943350072_
                                            (cons _hd4944050086_
                                                  _id4943450064_))
                                           (___kont5476954770_))))
                                   (___kont5476954770_))
                               (___kont5476954770_))
                           (___kont5476954770_))))
                   (___kont5476954770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_id4943550091_
                                                          (reverse _id4943450064_)))
                                                     (___kont5475154752_
                                                      _id4943550091_
                                                      _hd4942550049_))))))
                                     (_loop4943050059_
                                      _target4942750054_
                                      '())))))
                           (if (gx#stx-pair? ___stx5474754748_)
                               (let ((_e4940150132_
                                      (gx#stx-e ___stx5474754748_)))
                                 (let ((_tl4940350137_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4940150132_)))
                                       (_hd4940250135_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4940150132_))))
                                   (if (gx#identifier? _hd4940250135_)
                                       (if (gx#stx-eq? '%#if _hd4940250135_)
                                           (if (gx#stx-pair? _tl4940350137_)
                                               (let ((_e4940450140_
                                                      (gx#stx-e
                                                       _tl4940350137_)))
                                                 (let ((_tl4940650145_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4940450140_)))
                                                       (_hd4940550143_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4940450140_))))
                                                   (if (gx#stx-pair?
                                                        _tl4940650145_)
                                                       (let ((_e4940750148_
                                                              (gx#stx-e
                                                               _tl4940650145_)))
                                                         (let ((_tl4940950153_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e4940750148_)))
                       (_hd4940850151_
                        (let () (declare (not safe)) (##car _e4940750148_))))
                   (if (gx#stx-pair? _tl4940950153_)
                       (let ((_e4941050156_ (gx#stx-e _tl4940950153_)))
                         (let ((_tl4941250161_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4941050156_)))
                               (_hd4941150159_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4941050156_))))
                           (if (gx#stx-null? _tl4941250161_)
                               (___kont5474954750_
                                _hd4941150159_
                                _hd4940850151_
                                _hd4940550143_)
                               (___kont5476954770_))))
                       (___kont5476954770_))))
               (___kont5476954770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont5476954770_))
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd4940250135_)
                                               (if (gx#stx-pair?
                                                    _tl4940350137_)
                                                   (let ((_e4941850030_
                                                          (gx#stx-e
                                                           _tl4940350137_)))
                                                     (let ((_tl4942050035_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4941850030_)))
                                                           (_hd4941950033_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4941850030_))))
                                                       (if (gx#stx-pair?
                                                            _hd4941950033_)
                                                           (let ((_e4942150038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd4941950033_)))
                     (let ((_tl4942350043_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4942150038_)))
                           (_hd4942250041_
                            (let ()
                              (declare (not safe))
                              (##car _e4942150038_))))
                       (if (gx#identifier? _hd4942250041_)
                           (if (gx#stx-eq? '%#ref _hd4942250041_)
                               (if (gx#stx-pair? _tl4942350043_)
                                   (let ((_e4942450046_
                                          (gx#stx-e _tl4942350043_)))
                                     (let ((_tl4942650051_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4942450046_)))
                                           (_hd4942550049_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4942450046_))))
                                       (if (gx#stx-null? _tl4942650051_)
                                           (if (gx#stx-pair/null?
                                                _tl4942050035_)
                                               (let ((___splice5475354754_
                                                      (gx#syntax-split-splice
                                                       _tl4942050035_
                                                       '0)))
                                                 (let ((_tl4942950056_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice5475354754_
                                                           '1)))
                                                       (_target4942750054_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice5475354754_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl4942950056_)
                                                       (___match5484254843_
                                                        _e4940150132_
                                                        _hd4940250135_
                                                        _tl4940350137_
                                                        _e4941850030_
                                                        _hd4941950033_
                                                        _tl4942050035_
                                                        _e4942150038_
                                                        _hd4942250041_
                                                        _tl4942350043_
                                                        _e4942450046_
                                                        _hd4942550049_
                                                        _tl4942650051_
                                                        ___splice5475354754_
                                                        _target4942750054_
                                                        _tl4942950056_)
                                                       (___kont5476954770_))))
                                               (___kont5476954770_))
                                           (___kont5476954770_))))
                                   (___kont5476954770_))
                               (___kont5476954770_))
                           (___kont5476954770_))))
                   (___kont5476954770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont5476954770_))
                                               (if (gx#stx-eq?
                                                    '%#let-values
                                                    _hd4940250135_)
                                                   (if (gx#stx-pair?
                                                        _tl4940350137_)
                                                       (let ((_e4944849900_
                                                              (gx#stx-e
                                                               _tl4940350137_)))
                                                         (let ((_tl4945049905_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e4944849900_)))
                       (_hd4944949903_
                        (let () (declare (not safe)) (##car _e4944849900_))))
                   (if (gx#stx-pair/null? _hd4944949903_)
                       (let ((___splice5475754758_
                              (gx#syntax-split-splice _hd4944949903_ '0)))
                         (let ((_tl4945349910_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice5475754758_ '1)))
                               (_target4945149908_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice5475754758_ '0))))
                           (if (gx#stx-null? _tl4945349910_)
                               (___match5486654867_
                                _e4940150132_
                                _hd4940250135_
                                _tl4940350137_
                                _e4944849900_
                                _hd4944949903_
                                _tl4945049905_
                                ___splice5475754758_
                                _target4945149908_
                                _tl4945349910_)
                               (___kont5476954770_))))
                       (___kont5476954770_))))
               (___kont5476954770_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#letrec-values
                                                        _hd4940250135_)
                                                       (if (gx#stx-pair?
                                                            _tl4940350137_)
                                                           (let ((_e4952049589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl4940350137_)))
                     (let ((_tl4952249594_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4952049589_)))
                           (_hd4952149592_
                            (let ()
                              (declare (not safe))
                              (##car _e4952049589_))))
                       (if (gx#stx-pair? _hd4952149592_)
                           (let ((_e4952349597_ (gx#stx-e _hd4952149592_)))
                             (let ((_tl4952549602_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4952349597_)))
                                   (_hd4952449600_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4952349597_))))
                               (if (gx#stx-pair? _hd4952449600_)
                                   (let ((_e4952649605_
                                          (gx#stx-e _hd4952449600_)))
                                     (let ((_tl4952849610_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4952649605_)))
                                           (_hd4952749608_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4952649605_))))
                                       (if (gx#stx-pair? _hd4952749608_)
                                           (let ((_e4952949613_
                                                  (gx#stx-e _hd4952749608_)))
                                             (let ((_tl4953149618_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4952949613_)))
                                                   (_hd4953049616_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4952949613_))))
                                               (if (gx#stx-null?
                                                    _tl4953149618_)
                                                   (if (gx#stx-pair?
                                                        _tl4952849610_)
                                                       (let ((_e4953249621_
                                                              (gx#stx-e
                                                               _tl4952849610_)))
                                                         (let ((_tl4953449626_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e4953249621_)))
                       (_hd4953349624_
                        (let () (declare (not safe)) (##car _e4953249621_))))
                   (if (gx#stx-pair? _hd4953349624_)
                       (let ((_e4953549629_ (gx#stx-e _hd4953349624_)))
                         (let ((_tl4953749634_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4953549629_)))
                               (_hd4953649632_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4953549629_))))
                           (if (gx#identifier? _hd4953649632_)
                               (if (gx#stx-eq? '%#lambda _hd4953649632_)
                                   (if (gx#stx-pair? _tl4953749634_)
                                       (let ((_e4953849637_
                                              (gx#stx-e _tl4953749634_)))
                                         (let ((_tl4954049642_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4953849637_)))
                                               (_hd4953949640_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4953849637_))))
                                           (if (gx#stx-pair/null?
                                                _hd4953949640_)
                                               (let ((___splice5476554766_
                                                      (gx#syntax-split-splice
                                                       _hd4953949640_
                                                       '0)))
                                                 (let ((_tl4954349647_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice5476554766_
                                                           '1)))
                                                       (_target4954149645_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice5476554766_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl4954349647_)
                                                       (___match5495654957_
                                                        _e4940150132_
                                                        _hd4940250135_
                                                        _tl4940350137_
                                                        _e4952049589_
                                                        _hd4952149592_
                                                        _tl4952249594_
                                                        _e4952349597_
                                                        _hd4952449600_
                                                        _tl4952549602_
                                                        _e4952649605_
                                                        _hd4952749608_
                                                        _tl4952849610_
                                                        _e4952949613_
                                                        _hd4953049616_
                                                        _tl4953149618_
                                                        _e4953249621_
                                                        _hd4953349624_
                                                        _tl4953449626_
                                                        _e4953549629_
                                                        _hd4953649632_
                                                        _tl4953749634_
                                                        _e4953849637_
                                                        _hd4953949640_
                                                        _tl4954049642_
                                                        ___splice5476554766_
                                                        _target4954149645_
                                                        _tl4954349647_)
                                                       (___kont5476954770_))))
                                               (___kont5476954770_))))
                                       (___kont5476954770_))
                                   (___kont5476954770_))
                               (___kont5476954770_))))
                       (___kont5476954770_))))
               (___kont5476954770_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont5476954770_))))
                                           (___kont5476954770_))))
                                   (___kont5476954770_))))
                           (___kont5476954770_))))
                   (___kont5476954770_))
               (___kont5476954770_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont5476954770_))))
                               (___kont5476954770_)))))))
                  (_optimize-t__5370853709_
                   (lambda (_expr49372_ _test49373_ _continue49374_)
                     (_do-assert46376_
                      (cons (cons _test49373_ '#t) '())
                      (lambda () (_continue49374_ _expr49372_)))))
                  (_optimize-t__0__5371053711_
                   (lambda (_expr49380_ _test49381_)
                     (let ((_continue49383_ _optimize-e46387_))
                       (_optimize-t__5370853709_
                        _expr49380_
                        _test49381_
                        _continue49383_))))
                  (_optimize-t46388_
                   (lambda _g56811_
                     (let ((_g56810_
                            (let () (declare (not safe)) (##length _g56811_))))
                       (cond ((let () (declare (not safe)) (##fx= _g56810_ 2))
                              (apply _optimize-t__0__5371053711_ _g56811_))
                             ((let () (declare (not safe)) (##fx= _g56810_ 3))
                              (apply _optimize-t__5370853709_ _g56811_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g56811_))))))
                  (_optimize-f__5371253713_
                   (lambda (_expr48457_ _test48458_)
                     (_do-assert46376_
                      (if _test48458_ (cons (cons _test48458_ '#f) '()) '())
                      (lambda ()
                        (let* ((___stx5499754998_ _expr48457_)
                               (_g4846648639_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx5499754998_))))
                          (let ((___kont5499955000_
                                 (lambda (_L49227_ _L49228_)
                                   (let ((_$e49248_
                                          (_lookup-block46395_ _L49228_)))
                                     (if _$e49248_
                                         ((lambda (_block49251_)
                                            (if (_nonlinear-block?46397_
                                                 _block49251_)
                                                _expr48457_
                                                (let* ((_inline49260_
                                                        (_inline-block46396_
                                                         _block49251_
                                                         (foldr1 (lambda (_g4925249255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g4925349257_)
                           (cons _g4925249255_ _g4925349257_))
                         '()
                         _L49227_)))
               (___stx5495954960_ _inline49260_)
               (_g4926349284_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx5495954960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((___kont5496154962_
                                                         (lambda (_L49328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L49329_
                          _L49330_)
                   (let ((_$e49352_ (_assert-e46390_ _L49330_)))
                     (if (eq? '#t _$e49352_)
                         (if _in-splice?46375_
                             (_optimize-f__0__5371453715_ _L49329_)
                             (_optimize-e46387_ _L49329_))
                         (if (eq? '#f _$e49352_)
                             (_optimize-f__0__5371453715_ _L49328_)
                             _expr48457_)))))
                (___kont5496354964_
                 (lambda () (_optimize-f__0__5371453715_ _inline49260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         ___stx5495954960_)
                                                        (let ((_e4926849296_
                                                               (gx#stx-e
                                                                ___stx5495954960_)))
                                                          (let ((_tl4927049301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4926849296_)))
                        (_hd4926949299_
                         (let () (declare (not safe)) (##car _e4926849296_))))
                    (if (gx#identifier? _hd4926949299_)
                        (if (gx#stx-eq? '%#if _hd4926949299_)
                            (if (gx#stx-pair? _tl4927049301_)
                                (let ((_e4927149304_
                                       (gx#stx-e _tl4927049301_)))
                                  (let ((_tl4927349309_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4927149304_)))
                                        (_hd4927249307_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4927149304_))))
                                    (if (gx#stx-pair? _tl4927349309_)
                                        (let ((_e4927449312_
                                               (gx#stx-e _tl4927349309_)))
                                          (let ((_tl4927649317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4927449312_)))
                                                (_hd4927549315_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4927449312_))))
                                            (if (gx#stx-pair? _tl4927649317_)
                                                (let ((_e4927749320_
                                                       (gx#stx-e
                                                        _tl4927649317_)))
                                                  (let ((_tl4927949325_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4927749320_)))
                                                        (_hd4927849323_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4927749320_))))
                                                    (if (gx#stx-null?
                                                         _tl4927949325_)
                                                        (___kont5496154962_
                                                         _hd4927849323_
                                                         _hd4927549315_
                                                         _hd4927249307_)
                                                        (___kont5496354964_))))
                                                (___kont5496354964_))))
                                        (___kont5496354964_))))
                                (___kont5496354964_))
                            (___kont5496354964_))
                        (___kont5496354964_))))
                (___kont5496354964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _$e49248_)
                                         _expr48457_))))
                                (___kont5500355004_
                                 (lambda (_L49125_ _L49126_ _L49127_)
                                   (let ((_$e49144_
                                          (_assert-e46390_ _L49127_)))
                                     (if (eq? '#t _$e49144_)
                                         (if _in-splice?46375_
                                             (_optimize-f__0__5371453715_
                                              _L49126_)
                                             (_optimize-e46387_ _L49126_))
                                         (if (eq? '#f _$e49144_)
                                             (_optimize-f__0__5371453715_
                                              _L49125_)
                                             (let ((_K49147_
                                                    (_optimize-t__5370853709_
                                                     _L49126_
                                                     _L49127_
                                                     _optimize-f46389_))
                                                   (_E49148_
                                                    (_optimize-f__5371253713_
                                                     _L49125_
                                                     _L49127_)))
                                               (if (equal? (gxc#apply-generate-runtime-repr
                                                            _K49147_)
                                                           (gxc#apply-generate-runtime-repr
                                                            _E49148_))
                                                   _K49147_
                                                   (cons '%#if
                                                         (cons _L49127_
                                                               (cons _K49147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _E49148_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (___kont5500555006_
                                 (lambda (_L49055_ _L49056_ _L49057_)
                                   (let ((_body49076_
                                          (_optimize-f__0__5371453715_
                                           _L49055_)))
                                     (cons '%#let-values
                                           (cons (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L49056_
                                                    _L49057_)
                                                   (foldr2 (lambda (_g4907749081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4907849083_
                            _g4907949085_)
                     (cons (cons (cons _g4907849083_ '())
                                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                             (cons _g4907749081_ '()))
                                       '()))
                           _g4907949085_))
                   '()
                   _L49056_
                   _L49057_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _body49076_ '()))))))
                                (___kont5500955010_
                                 (lambda (_L48923_ _L48924_ _L48925_)
                                   (_bind-e__5371653717_
                                    (map cons
                                         (foldr1 (lambda (_g4894348946_
                                                          _g4894448948_)
                                                   (cons _g4894348946_
                                                         _g4894448948_))
                                                 '()
                                                 _L48925_)
                                         (foldr1 (lambda (_g4895048953_
                                                          _g4895148955_)
                                                   (cons _g4895048953_
                                                         _g4895148955_))
                                                 '()
                                                 _L48924_))
                                    _L48923_
                                    _optimize-f46389_)))
                                (___kont5501355014_
                                 (lambda (_L48779_
                                          _L48780_
                                          _L48781_
                                          _L48782_
                                          _L48783_)
                                   (_do-splice!46386_
                                    (lambda ()
                                      (let ((_expr48826_
                                             (_optimize-f__0__5371453715_
                                              _L48781_)))
                                        (cons '%#letrec-values
                                              (cons (cons (cons (cons _L48783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (cons '%#lambda
                                    (cons (foldr1 (lambda (_g4882748830_
                                                           _g4882848832_)
                                                    (cons _g4882748830_
                                                          _g4882848832_))
                                                  '()
                                                  _L48782_)
                                          (cons _expr48826_ '())))
                              '()))
                  (foldr1 (lambda (_g4883448837_ _g4883548839_)
                            (cons _g4883448837_ _g4883548839_))
                          '()
                          _L48780_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L48779_ '()))))))))
                                (___kont5501955020_ (lambda () _expr48457_)))
                            (let* ((___match5520655207_
                                    (lambda (_e4858748651_
                                             _hd4858848654_
                                             _tl4858948656_
                                             _e4859048659_
                                             _hd4859148662_
                                             _tl4859248664_
                                             _e4859348667_
                                             _hd4859448670_
                                             _tl4859548672_
                                             _e4859648675_
                                             _hd4859748678_
                                             _tl4859848680_
                                             _e4859948683_
                                             _hd4860048686_
                                             _tl4860148688_
                                             _e4860248691_
                                             _hd4860348694_
                                             _tl4860448696_
                                             _e4860548699_
                                             _hd4860648702_
                                             _tl4860748704_
                                             _e4860848707_
                                             _hd4860948710_
                                             _tl4861048712_
                                             ___splice5501555016_
                                             _target4861148715_
                                             _tl4861348717_)
                                      (letrec ((_loop4861448720_
                                                (lambda (_hd4861248723_
                                                         _id4861848725_)
                                                  (if (gx#stx-pair?
                                                       _hd4861248723_)
                                                      (let ((_e4861548728_
                                                             (gx#stx-e
                                                              _hd4861248723_)))
                                                        (let ((_lp-tl4861748733_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4861548728_)))
                      (_lp-hd4861648731_
                       (let () (declare (not safe)) (##car _e4861548728_))))
                  (_loop4861448720_
                   _lp-tl4861748733_
                   (cons _lp-hd4861648731_ _id4861848725_))))
              (let ((_id4861948736_ (reverse _id4861848725_)))
                (if (gx#stx-pair? _tl4861048712_)
                    (let ((_e4862048739_ (gx#stx-e _tl4861048712_)))
                      (let ((_tl4862248744_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4862048739_)))
                            (_hd4862148742_
                             (let ()
                               (declare (not safe))
                               (##car _e4862048739_))))
                        (if (gx#stx-null? _tl4862248744_)
                            (if (gx#stx-null? _tl4860448696_)
                                (if (gx#stx-pair/null? _tl4859548672_)
                                    (let ((___splice5501755018_
                                           (gx#syntax-split-splice
                                            _tl4859548672_
                                            '0)))
                                      (let ((_tl4862548749_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5501755018_
                                                '1)))
                                            (_target4862348747_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5501755018_
                                                '0))))
                                        (if (gx#stx-null? _tl4862548749_)
                                            (letrec ((_loop4862648752_
                                                      (lambda (_hd4862448755_
                                                               _bind4863048757_)
                                                        (if (gx#stx-pair?
                                                             _hd4862448755_)
                                                            (let ((_e4862748760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4862448755_)))
                      (let ((_lp-tl4862948765_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4862748760_)))
                            (_lp-hd4862848763_
                             (let ()
                               (declare (not safe))
                               (##car _e4862748760_))))
                        (_loop4862648752_
                         _lp-tl4862948765_
                         (cons _lp-hd4862848763_ _bind4863048757_))))
                    (let ((_bind4863148768_ (reverse _bind4863048757_)))
                      (if (gx#stx-pair? _tl4859248664_)
                          (let ((_e4863248771_ (gx#stx-e _tl4859248664_)))
                            (let ((_tl4863448776_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4863248771_)))
                                  (_hd4863348774_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4863248771_))))
                              (if (gx#stx-null? _tl4863448776_)
                                  (___kont5501355014_
                                   _hd4863348774_
                                   _bind4863148768_
                                   _hd4862148742_
                                   _id4861948736_
                                   _hd4860048686_)
                                  (___kont5501955020_))))
                          (___kont5501955020_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop4862648752_
                                               _target4862348747_
                                               '()))
                                            (___kont5501955020_))))
                                    (___kont5501955020_))
                                (___kont5501955020_))
                            (___kont5501955020_))))
                    (___kont5501955020_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4861448720_
                                         _target4861148715_
                                         '()))))
                                   (___match5514055141_
                                    (lambda (_e4855348847_
                                             _hd4855448850_
                                             _tl4855548852_
                                             _e4855648855_
                                             _hd4855748858_
                                             _tl4855848860_
                                             ___splice5501155012_
                                             _target4855948863_
                                             _tl4856148865_)
                                      (letrec ((_loop4856248868_
                                                (lambda (_hd4856048871_
                                                         _expr4856648873_
                                                         _id4856748875_)
                                                  (if (gx#stx-pair?
                                                       _hd4856048871_)
                                                      (let ((_e4856348878_
                                                             (gx#stx-e
                                                              _hd4856048871_)))
                                                        (let ((_lp-tl4856548883_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4856348878_)))
                      (_lp-hd4856448881_
                       (let () (declare (not safe)) (##car _e4856348878_))))
                  (if (gx#stx-pair? _lp-hd4856448881_)
                      (let ((_e4857048886_ (gx#stx-e _lp-hd4856448881_)))
                        (let ((_tl4857248891_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4857048886_)))
                              (_hd4857148889_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4857048886_))))
                          (if (gx#stx-pair? _hd4857148889_)
                              (let ((_e4857348894_ (gx#stx-e _hd4857148889_)))
                                (let ((_tl4857548899_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4857348894_)))
                                      (_hd4857448897_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4857348894_))))
                                  (if (gx#stx-null? _tl4857548899_)
                                      (if (gx#stx-pair? _tl4857248891_)
                                          (let ((_e4857648902_
                                                 (gx#stx-e _tl4857248891_)))
                                            (let ((_tl4857848907_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4857648902_)))
                                                  (_hd4857748905_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4857648902_))))
                                              (if (gx#stx-null? _tl4857848907_)
                                                  (_loop4856248868_
                                                   _lp-tl4856548883_
                                                   (cons _hd4857748905_
                                                         _expr4856648873_)
                                                   (cons _hd4857448897_
                                                         _id4856748875_))
                                                  (___kont5501955020_))))
                                          (___kont5501955020_))
                                      (___kont5501955020_))))
                              (___kont5501955020_))))
                      (___kont5501955020_))))
              (let ((_id4856948912_ (reverse _id4856748875_))
                    (_expr4856848910_ (reverse _expr4856648873_)))
                (if (gx#stx-pair? _tl4855848860_)
                    (let ((_e4857948915_ (gx#stx-e _tl4855848860_)))
                      (let ((_tl4858148920_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4857948915_)))
                            (_hd4858048918_
                             (let ()
                               (declare (not safe))
                               (##car _e4857948915_))))
                        (if (gx#stx-null? _tl4858148920_)
                            (___kont5500955010_
                             _hd4858048918_
                             _expr4856848910_
                             _id4856948912_)
                            (___kont5501955020_))))
                    (___kont5501955020_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4856248868_
                                         _target4855948863_
                                         '()
                                         '()))))
                                   (___match5511655117_
                                    (lambda (_e4851548963_
                                             _hd4851648966_
                                             _tl4851748968_
                                             _e4851848971_
                                             _hd4851948974_
                                             _tl4852048976_
                                             ___splice5500755008_
                                             _target4852148979_
                                             _tl4852348981_)
                                      (letrec ((_loop4852448984_
                                                (lambda (_hd4852248987_
                                                         _xid4852848989_
                                                         _id4852948991_)
                                                  (if (gx#stx-pair?
                                                       _hd4852248987_)
                                                      (let ((_e4852548994_
                                                             (gx#stx-e
                                                              _hd4852248987_)))
                                                        (let ((_lp-tl4852748999_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4852548994_)))
                      (_lp-hd4852648997_
                       (let () (declare (not safe)) (##car _e4852548994_))))
                  (if (gx#stx-pair? _lp-hd4852648997_)
                      (let ((_e4853249002_ (gx#stx-e _lp-hd4852648997_)))
                        (let ((_tl4853449007_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4853249002_)))
                              (_hd4853349005_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4853249002_))))
                          (if (gx#stx-pair? _hd4853349005_)
                              (let ((_e4853549010_ (gx#stx-e _hd4853349005_)))
                                (let ((_tl4853749015_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4853549010_)))
                                      (_hd4853649013_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4853549010_))))
                                  (if (gx#stx-null? _tl4853749015_)
                                      (if (gx#stx-pair? _tl4853449007_)
                                          (let ((_e4853849018_
                                                 (gx#stx-e _tl4853449007_)))
                                            (let ((_tl4854049023_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4853849018_)))
                                                  (_hd4853949021_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4853849018_))))
                                              (if (gx#stx-pair? _hd4853949021_)
                                                  (let ((_e4854149026_
                                                         (gx#stx-e
                                                          _hd4853949021_)))
                                                    (let ((_tl4854349031_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4854149026_)))
                                                          (_hd4854249029_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4854149026_))))
                                                      (if (gx#identifier?
                                                           _hd4854249029_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd4854249029_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4854349031_)
                          (let ((_e4854449034_ (gx#stx-e _tl4854349031_)))
                            (let ((_tl4854649039_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4854449034_)))
                                  (_hd4854549037_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4854449034_))))
                              (if (gx#stx-null? _tl4854649039_)
                                  (if (gx#stx-null? _tl4854049023_)
                                      (_loop4852448984_
                                       _lp-tl4852748999_
                                       (cons _hd4854549037_ _xid4852848989_)
                                       (cons _hd4853649013_ _id4852948991_))
                                      (___match5514055141_
                                       _e4851548963_
                                       _hd4851648966_
                                       _tl4851748968_
                                       _e4851848971_
                                       _hd4851948974_
                                       _tl4852048976_
                                       ___splice5500755008_
                                       _target4852148979_
                                       _tl4852348981_))
                                  (___match5514055141_
                                   _e4851548963_
                                   _hd4851648966_
                                   _tl4851748968_
                                   _e4851848971_
                                   _hd4851948974_
                                   _tl4852048976_
                                   ___splice5500755008_
                                   _target4852148979_
                                   _tl4852348981_))))
                          (___match5514055141_
                           _e4851548963_
                           _hd4851648966_
                           _tl4851748968_
                           _e4851848971_
                           _hd4851948974_
                           _tl4852048976_
                           ___splice5500755008_
                           _target4852148979_
                           _tl4852348981_))
                      (___match5514055141_
                       _e4851548963_
                       _hd4851648966_
                       _tl4851748968_
                       _e4851848971_
                       _hd4851948974_
                       _tl4852048976_
                       ___splice5500755008_
                       _target4852148979_
                       _tl4852348981_))
                  (___match5514055141_
                   _e4851548963_
                   _hd4851648966_
                   _tl4851748968_
                   _e4851848971_
                   _hd4851948974_
                   _tl4852048976_
                   ___splice5500755008_
                   _target4852148979_
                   _tl4852348981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match5514055141_
                                                   _e4851548963_
                                                   _hd4851648966_
                                                   _tl4851748968_
                                                   _e4851848971_
                                                   _hd4851948974_
                                                   _tl4852048976_
                                                   ___splice5500755008_
                                                   _target4852148979_
                                                   _tl4852348981_))))
                                          (___match5514055141_
                                           _e4851548963_
                                           _hd4851648966_
                                           _tl4851748968_
                                           _e4851848971_
                                           _hd4851948974_
                                           _tl4852048976_
                                           ___splice5500755008_
                                           _target4852148979_
                                           _tl4852348981_))
                                      (___match5514055141_
                                       _e4851548963_
                                       _hd4851648966_
                                       _tl4851748968_
                                       _e4851848971_
                                       _hd4851948974_
                                       _tl4852048976_
                                       ___splice5500755008_
                                       _target4852148979_
                                       _tl4852348981_))))
                              (___match5514055141_
                               _e4851548963_
                               _hd4851648966_
                               _tl4851748968_
                               _e4851848971_
                               _hd4851948974_
                               _tl4852048976_
                               ___splice5500755008_
                               _target4852148979_
                               _tl4852348981_))))
                      (___match5514055141_
                       _e4851548963_
                       _hd4851648966_
                       _tl4851748968_
                       _e4851848971_
                       _hd4851948974_
                       _tl4852048976_
                       ___splice5500755008_
                       _target4852148979_
                       _tl4852348981_))))
              (let ((_id4853149044_ (reverse _id4852948991_))
                    (_xid4853049042_ (reverse _xid4852848989_)))
                (if (gx#stx-pair? _tl4852048976_)
                    (let ((_e4854749047_ (gx#stx-e _tl4852048976_)))
                      (let ((_tl4854949052_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4854749047_)))
                            (_hd4854849050_
                             (let ()
                               (declare (not safe))
                               (##car _e4854749047_))))
                        (if (gx#stx-null? _tl4854949052_)
                            (___kont5500555006_
                             _hd4854849050_
                             _xid4853049042_
                             _id4853149044_)
                            (___match5514055141_
                             _e4851548963_
                             _hd4851648966_
                             _tl4851748968_
                             _e4851848971_
                             _hd4851948974_
                             _tl4852048976_
                             ___splice5500755008_
                             _target4852148979_
                             _tl4852348981_))))
                    (___match5514055141_
                     _e4851548963_
                     _hd4851648966_
                     _tl4851748968_
                     _e4851848971_
                     _hd4851948974_
                     _tl4852048976_
                     ___splice5500755008_
                     _target4852148979_
                     _tl4852348981_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4852448984_
                                         _target4852148979_
                                         '()
                                         '()))))
                                   (___match5506255063_
                                    (lambda (_e4847049155_
                                             _hd4847149158_
                                             _tl4847249160_
                                             _e4847349163_
                                             _hd4847449166_
                                             _tl4847549168_
                                             _e4847649171_
                                             _hd4847749174_
                                             _tl4847849176_
                                             _e4847949179_
                                             _hd4848049182_
                                             _tl4848149184_
                                             ___splice5500155002_
                                             _target4848249187_
                                             _tl4848449189_)
                                      (letrec ((_loop4848549192_
                                                (lambda (_hd4848349195_
                                                         _id4848949197_)
                                                  (if (gx#stx-pair?
                                                       _hd4848349195_)
                                                      (let ((_e4848649200_
                                                             (gx#stx-e
                                                              _hd4848349195_)))
                                                        (let ((_lp-tl4848849205_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4848649200_)))
                      (_lp-hd4848749203_
                       (let () (declare (not safe)) (##car _e4848649200_))))
                  (if (gx#stx-pair? _lp-hd4848749203_)
                      (let ((_e4849149208_ (gx#stx-e _lp-hd4848749203_)))
                        (let ((_tl4849349213_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4849149208_)))
                              (_hd4849249211_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4849149208_))))
                          (if (gx#identifier? _hd4849249211_)
                              (if (gx#stx-eq? '%#ref _hd4849249211_)
                                  (if (gx#stx-pair? _tl4849349213_)
                                      (let ((_e4849449216_
                                             (gx#stx-e _tl4849349213_)))
                                        (let ((_tl4849649221_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4849449216_)))
                                              (_hd4849549219_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4849449216_))))
                                          (if (gx#stx-null? _tl4849649221_)
                                              (_loop4848549192_
                                               _lp-tl4848849205_
                                               (cons _hd4849549219_
                                                     _id4848949197_))
                                              (___kont5501955020_))))
                                      (___kont5501955020_))
                                  (___kont5501955020_))
                              (___kont5501955020_))))
                      (___kont5501955020_))))
              (let ((_id4849049224_ (reverse _id4848949197_)))
                (___kont5499955000_ _id4849049224_ _hd4848049182_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4848549192_
                                         _target4848249187_
                                         '())))))
                              (if (gx#stx-pair? ___stx5499754998_)
                                  (let ((_e4847049155_
                                         (gx#stx-e ___stx5499754998_)))
                                    (let ((_tl4847249160_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4847049155_)))
                                          (_hd4847149158_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4847049155_))))
                                      (if (gx#identifier? _hd4847149158_)
                                          (if (gx#stx-eq?
                                               '%#call
                                               _hd4847149158_)
                                              (if (gx#stx-pair? _tl4847249160_)
                                                  (let ((_e4847349163_
                                                         (gx#stx-e
                                                          _tl4847249160_)))
                                                    (let ((_tl4847549168_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4847349163_)))
                                                          (_hd4847449166_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4847349163_))))
                                                      (if (gx#stx-pair?
                                                           _hd4847449166_)
                                                          (let ((_e4847649171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd4847449166_)))
                    (let ((_tl4847849176_
                           (let () (declare (not safe)) (##cdr _e4847649171_)))
                          (_hd4847749174_
                           (let ()
                             (declare (not safe))
                             (##car _e4847649171_))))
                      (if (gx#identifier? _hd4847749174_)
                          (if (gx#stx-eq? '%#ref _hd4847749174_)
                              (if (gx#stx-pair? _tl4847849176_)
                                  (let ((_e4847949179_
                                         (gx#stx-e _tl4847849176_)))
                                    (let ((_tl4848149184_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4847949179_)))
                                          (_hd4848049182_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4847949179_))))
                                      (if (gx#stx-null? _tl4848149184_)
                                          (if (gx#stx-pair/null?
                                               _tl4847549168_)
                                              (let ((___splice5500155002_
                                                     (gx#syntax-split-splice
                                                      _tl4847549168_
                                                      '0)))
                                                (let ((_tl4848449189_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice5500155002_
                                                          '1)))
                                                      (_target4848249187_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice5500155002_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl4848449189_)
                                                      (___match5506255063_
                                                       _e4847049155_
                                                       _hd4847149158_
                                                       _tl4847249160_
                                                       _e4847349163_
                                                       _hd4847449166_
                                                       _tl4847549168_
                                                       _e4847649171_
                                                       _hd4847749174_
                                                       _tl4847849176_
                                                       _e4847949179_
                                                       _hd4848049182_
                                                       _tl4848149184_
                                                       ___splice5500155002_
                                                       _target4848249187_
                                                       _tl4848449189_)
                                                      (___kont5501955020_))))
                                              (___kont5501955020_))
                                          (___kont5501955020_))))
                                  (___kont5501955020_))
                              (___kont5501955020_))
                          (___kont5501955020_))))
                  (___kont5501955020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont5501955020_))
                                              (if (gx#stx-eq?
                                                   '%#if
                                                   _hd4847149158_)
                                                  (if (gx#stx-pair?
                                                       _tl4847249160_)
                                                      (let ((_e4850349101_
                                                             (gx#stx-e
                                                              _tl4847249160_)))
                                                        (let ((_tl4850549106_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4850349101_)))
                      (_hd4850449104_
                       (let () (declare (not safe)) (##car _e4850349101_))))
                  (if (gx#stx-pair? _tl4850549106_)
                      (let ((_e4850649109_ (gx#stx-e _tl4850549106_)))
                        (let ((_tl4850849114_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4850649109_)))
                              (_hd4850749112_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4850649109_))))
                          (if (gx#stx-pair? _tl4850849114_)
                              (let ((_e4850949117_ (gx#stx-e _tl4850849114_)))
                                (let ((_tl4851149122_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4850949117_)))
                                      (_hd4851049120_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4850949117_))))
                                  (if (gx#stx-null? _tl4851149122_)
                                      (___kont5500355004_
                                       _hd4851049120_
                                       _hd4850749112_
                                       _hd4850449104_)
                                      (___kont5501955020_))))
                              (___kont5501955020_))))
                      (___kont5501955020_))))
              (___kont5501955020_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd4847149158_)
                                                      (if (gx#stx-pair?
                                                           _tl4847249160_)
                                                          (let ((_e4851848971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4847249160_)))
                    (let ((_tl4852048976_
                           (let () (declare (not safe)) (##cdr _e4851848971_)))
                          (_hd4851948974_
                           (let ()
                             (declare (not safe))
                             (##car _e4851848971_))))
                      (if (gx#stx-pair/null? _hd4851948974_)
                          (let ((___splice5500755008_
                                 (gx#syntax-split-splice _hd4851948974_ '0)))
                            (let ((_tl4852348981_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice5500755008_ '1)))
                                  (_target4852148979_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice5500755008_ '0))))
                              (if (gx#stx-null? _tl4852348981_)
                                  (___match5511655117_
                                   _e4847049155_
                                   _hd4847149158_
                                   _tl4847249160_
                                   _e4851848971_
                                   _hd4851948974_
                                   _tl4852048976_
                                   ___splice5500755008_
                                   _target4852148979_
                                   _tl4852348981_)
                                  (___kont5501955020_))))
                          (___kont5501955020_))))
                  (___kont5501955020_))
              (if (gx#stx-eq? '%#letrec-values _hd4847149158_)
                  (if (gx#stx-pair? _tl4847249160_)
                      (let ((_e4859048659_ (gx#stx-e _tl4847249160_)))
                        (let ((_tl4859248664_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4859048659_)))
                              (_hd4859148662_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4859048659_))))
                          (if (gx#stx-pair? _hd4859148662_)
                              (let ((_e4859348667_ (gx#stx-e _hd4859148662_)))
                                (let ((_tl4859548672_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4859348667_)))
                                      (_hd4859448670_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4859348667_))))
                                  (if (gx#stx-pair? _hd4859448670_)
                                      (let ((_e4859648675_
                                             (gx#stx-e _hd4859448670_)))
                                        (let ((_tl4859848680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4859648675_)))
                                              (_hd4859748678_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4859648675_))))
                                          (if (gx#stx-pair? _hd4859748678_)
                                              (let ((_e4859948683_
                                                     (gx#stx-e
                                                      _hd4859748678_)))
                                                (let ((_tl4860148688_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4859948683_)))
                                                      (_hd4860048686_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4859948683_))))
                                                  (if (gx#stx-null?
                                                       _tl4860148688_)
                                                      (if (gx#stx-pair?
                                                           _tl4859848680_)
                                                          (let ((_e4860248691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4859848680_)))
                    (let ((_tl4860448696_
                           (let () (declare (not safe)) (##cdr _e4860248691_)))
                          (_hd4860348694_
                           (let ()
                             (declare (not safe))
                             (##car _e4860248691_))))
                      (if (gx#stx-pair? _hd4860348694_)
                          (let ((_e4860548699_ (gx#stx-e _hd4860348694_)))
                            (let ((_tl4860748704_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4860548699_)))
                                  (_hd4860648702_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4860548699_))))
                              (if (gx#identifier? _hd4860648702_)
                                  (if (gx#stx-eq? '%#lambda _hd4860648702_)
                                      (if (gx#stx-pair? _tl4860748704_)
                                          (let ((_e4860848707_
                                                 (gx#stx-e _tl4860748704_)))
                                            (let ((_tl4861048712_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4860848707_)))
                                                  (_hd4860948710_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4860848707_))))
                                              (if (gx#stx-pair/null?
                                                   _hd4860948710_)
                                                  (let ((___splice5501555016_
                                                         (gx#syntax-split-splice
                                                          _hd4860948710_
                                                          '0)))
                                                    (let ((_tl4861348717_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice5501555016_
                                                              '1)))
                                                          (_target4861148715_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice5501555016_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4861348717_)
                                                          (___match5520655207_
                                                           _e4847049155_
                                                           _hd4847149158_
                                                           _tl4847249160_
                                                           _e4859048659_
                                                           _hd4859148662_
                                                           _tl4859248664_
                                                           _e4859348667_
                                                           _hd4859448670_
                                                           _tl4859548672_
                                                           _e4859648675_
                                                           _hd4859748678_
                                                           _tl4859848680_
                                                           _e4859948683_
                                                           _hd4860048686_
                                                           _tl4860148688_
                                                           _e4860248691_
                                                           _hd4860348694_
                                                           _tl4860448696_
                                                           _e4860548699_
                                                           _hd4860648702_
                                                           _tl4860748704_
                                                           _e4860848707_
                                                           _hd4860948710_
                                                           _tl4861048712_
                                                           ___splice5501555016_
                                                           _target4861148715_
                                                           _tl4861348717_)
                                                          (___kont5501955020_))))
                                                  (___kont5501955020_))))
                                          (___kont5501955020_))
                                      (___kont5501955020_))
                                  (___kont5501955020_))))
                          (___kont5501955020_))))
                  (___kont5501955020_))
              (___kont5501955020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont5501955020_))))
                                      (___kont5501955020_))))
                              (___kont5501955020_))))
                      (___kont5501955020_))
                  (___kont5501955020_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont5501955020_))))
                                  (___kont5501955020_)))))))))
                  (_optimize-f__0__5371453715_
                   (lambda (_expr49364_)
                     (let ((_test49366_ '#f))
                       (_optimize-f__5371253713_ _expr49364_ _test49366_))))
                  (_optimize-f46389_
                   (lambda _g56813_
                     (let ((_g56812_
                            (let () (declare (not safe)) (##length _g56813_))))
                       (cond ((let () (declare (not safe)) (##fx= _g56812_ 1))
                              (apply _optimize-f__0__5371453715_ _g56813_))
                             ((let () (declare (not safe)) (##fx= _g56812_ 2))
                              (apply _optimize-f__5371253713_ _g56813_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g56813_))))))
                  (_assert-e46390_
                   (lambda (_expr47398_)
                     (let* ((_sexpr47400_
                             (gxc#apply-generate-runtime-repr _expr47398_))
                            (_$e47402_ (assoc _sexpr47400_ _env-assert46372_)))
                       (if _$e47402_
                           (cdr _$e47402_)
                           (let _assert47405_ ((_expr47407_ _expr47398_))
                             (let* ((___stx5530355304_ _expr47407_)
                                    (_g4741547594_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx5530355304_))))
                               (let ((___kont5530555306_
                                      (lambda (_L48425_ _L48426_)
                                        (let ((_$e48448_
                                               (_predicate-type46377_
                                                _L48426_)))
                                          (if _$e48448_
                                              ((lambda (_t48451_)
                                                 (_assert-type46391_
                                                  _L48425_
                                                  _t48451_))
                                               _$e48448_)
                                              '#!void))))
                                     (___kont5530755308_
                                      (lambda (_L48118_ _L48119_ _L48120_)
                                        (let ((_$e48145_
                                               (gxc#identifier-symbol
                                                _L48120_)))
                                          (if (or (eq? '##fx= _$e48145_)
                                                  (eq? 'fx= _$e48145_))
                                              (let* ((___stx5520955210_
                                                      _L48119_)
                                                     (_g4815248181_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx5520955210_))))
                                                (let ((___kont5521155212_
                                                       (lambda (_L48249_
                                                                _L48250_)
                                                         (let ((_$e48275_
                                                                (_countf-symbol46379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L48250_)))
                   (if _$e48275_
                       ((lambda (_sym48278_)
                          (_assert-count46392_
                           _L48249_
                           _sym48278_
                           (gx#stx-e _L48118_)))
                        _$e48275_)
                       '#!void))))
              (___kont5521355214_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx5520955210_)
                                                      (let ((_e4815648193_
                                                             (gx#stx-e
                                                              ___stx5520955210_)))
                                                        (let ((_tl4815848198_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4815648193_)))
                      (_hd4815748196_
                       (let () (declare (not safe)) (##car _e4815648193_))))
                  (if (gx#identifier? _hd4815748196_)
                      (if (gx#stx-eq? '%#call _hd4815748196_)
                          (if (gx#stx-pair? _tl4815848198_)
                              (let ((_e4815948201_ (gx#stx-e _tl4815848198_)))
                                (let ((_tl4816148206_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4815948201_)))
                                      (_hd4816048204_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4815948201_))))
                                  (if (gx#stx-pair? _hd4816048204_)
                                      (let ((_e4816248209_
                                             (gx#stx-e _hd4816048204_)))
                                        (let ((_tl4816448214_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4816248209_)))
                                              (_hd4816348212_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4816248209_))))
                                          (if (gx#identifier? _hd4816348212_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd4816348212_)
                                                  (if (gx#stx-pair?
                                                       _tl4816448214_)
                                                      (let ((_e4816548217_
                                                             (gx#stx-e
                                                              _tl4816448214_)))
                                                        (let ((_tl4816748222_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4816548217_)))
                      (_hd4816648220_
                       (let () (declare (not safe)) (##car _e4816548217_))))
                  (if (gx#stx-null? _tl4816748222_)
                      (if (gx#stx-pair? _tl4816148206_)
                          (let ((_e4816848225_ (gx#stx-e _tl4816148206_)))
                            (let ((_tl4817048230_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4816848225_)))
                                  (_hd4816948228_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4816848225_))))
                              (if (gx#stx-pair? _hd4816948228_)
                                  (let ((_e4817148233_
                                         (gx#stx-e _hd4816948228_)))
                                    (let ((_tl4817348238_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4817148233_)))
                                          (_hd4817248236_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4817148233_))))
                                      (if (gx#identifier? _hd4817248236_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd4817248236_)
                                              (if (gx#stx-pair? _tl4817348238_)
                                                  (let ((_e4817448241_
                                                         (gx#stx-e
                                                          _tl4817348238_)))
                                                    (let ((_tl4817648246_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4817448241_)))
                                                          (_hd4817548244_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4817448241_))))
                                                      (if (gx#stx-null?
                                                           _tl4817648246_)
                                                          (if (gx#stx-null?
                                                               _tl4817048230_)
                                                              (___kont5521155212_
                                                               _hd4817548244_
                                                               _hd4816648220_)
                                                              (___kont5521355214_))
                                                          (___kont5521355214_))))
                                                  (___kont5521355214_))
                                              (___kont5521355214_))
                                          (___kont5521355214_))))
                                  (___kont5521355214_))))
                          (___kont5521355214_))
                      (___kont5521355214_))))
              (___kont5521355214_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont5521355214_))
                                              (___kont5521355214_))))
                                      (___kont5521355214_))))
                              (___kont5521355214_))
                          (___kont5521355214_))
                      (___kont5521355214_))))
              (___kont5521355214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (or (eq? '##eq? _$e48145_)
                                                      (eq? 'eq? _$e48145_)
                                                      (eq? '##eqv? _$e48145_)
                                                      (eq? 'eqv? _$e48145_)
                                                      (eq? '##equal? _$e48145_)
                                                      (eq? 'equal? _$e48145_)
                                                      (eq? 'gx#free-identifier=?
                                                           _$e48145_)
                                                      (eq? 'gx#stx-eq?
                                                           _$e48145_))
                                                  ((lambda (_sym48304_)
                                                     (let* ((___stx5527755278_
                                                             _L48119_)
                                                            (_g4830748320_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx5527755278_))))
                                                       (let ((___kont5527955280_
                                                              (lambda (_L48348_)
                                                                (_assert-eqf46393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L48348_
                         (_eqf-symbol46380_ _sym48304_)
                         (gx#stx-e _L48118_))))
                     (___kont5528155282_ (lambda () '#!void)))
                 (if (gx#stx-pair? ___stx5527755278_)
                     (let ((_e4831048332_ (gx#stx-e ___stx5527755278_)))
                       (let ((_tl4831248337_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4831048332_)))
                             (_hd4831148335_
                              (let ()
                                (declare (not safe))
                                (##car _e4831048332_))))
                         (if (gx#identifier? _hd4831148335_)
                             (if (gx#stx-eq? '%#ref _hd4831148335_)
                                 (if (gx#stx-pair? _tl4831248337_)
                                     (let ((_e4831348340_
                                            (gx#stx-e _tl4831248337_)))
                                       (let ((_tl4831548345_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4831348340_)))
                                             (_hd4831448343_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4831348340_))))
                                         (if (gx#stx-null? _tl4831548345_)
                                             (___kont5527955280_
                                              _hd4831448343_)
                                             (___kont5528155282_))))
                                     (___kont5528155282_))
                                 (___kont5528155282_))
                             (___kont5528155282_))))
                     (___kont5528155282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _$e48145_)
                                                  '#!void)))))
                                     (___kont5530955310_
                                      (lambda (_L48022_ _L48023_ _L48024_)
                                        (_assert47405_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                '%#call)
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            '%#ref)
                                                           (cons _L48024_ '()))
                                                     (cons _L48022_
                                                           (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '%#quote)
                               (cons _L48023_ '()))
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont5531155312_
                                      (lambda (_L47914_ _L47915_ _L47916_)
                                        (let ((_$e47945_
                                               (gxc#identifier-symbol
                                                _L47916_)))
                                          (if (or (eq? 'gx#free-identifier=?
                                                       _$e47945_)
                                                  (eq? 'gx#stx-eq? _$e47945_))
                                              ((lambda (_sym47951_)
                                                 (_assert-eqf46393_
                                                  _L47915_
                                                  (_eqf-symbol46380_
                                                   _sym47951_)
                                                  _L47914_))
                                               _$e47945_)
                                              '#!void))))
                                     (___kont5531355314_
                                      (lambda (_L47798_ _L47799_ _L47800_)
                                        (_assert47405_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                '%#call)
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            '%#ref)
                                                           (cons _L47800_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%#ref)
                         (cons _L47798_ '()))
                   (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                               (cons _L47799_ '()))
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont5531555316_
                                      (lambda (_L47678_ _L47679_ _L47680_)
                                        (_assert47405_
                                         (gxc#apply-expression-subst
                                          _L47679_
                                          _L47680_
                                          _L47678_))))
                                     (___kont5531755318_ (lambda () '#!void)))
                                 (if (gx#stx-pair? ___stx5530355304_)
                                     (let ((_e4741948369_
                                            (gx#stx-e ___stx5530355304_)))
                                       (let ((_tl4742148374_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4741948369_)))
                                             (_hd4742048372_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4741948369_))))
                                         (if (gx#identifier? _hd4742048372_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd4742048372_)
                                                 (if (gx#stx-pair?
                                                      _tl4742148374_)
                                                     (let ((_e4742248377_
                                                            (gx#stx-e
                                                             _tl4742148374_)))
                                                       (let ((_tl4742448382_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4742248377_)))
                     (_hd4742348380_
                      (let () (declare (not safe)) (##car _e4742248377_))))
                 (if (gx#stx-pair? _hd4742348380_)
                     (let ((_e4742548385_ (gx#stx-e _hd4742348380_)))
                       (let ((_tl4742748390_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4742548385_)))
                             (_hd4742648388_
                              (let ()
                                (declare (not safe))
                                (##car _e4742548385_))))
                         (if (gx#identifier? _hd4742648388_)
                             (if (gx#stx-eq? '%#ref _hd4742648388_)
                                 (if (gx#stx-pair? _tl4742748390_)
                                     (let ((_e4742848393_
                                            (gx#stx-e _tl4742748390_)))
                                       (let ((_tl4743048398_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4742848393_)))
                                             (_hd4742948396_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4742848393_))))
                                         (if (gx#stx-null? _tl4743048398_)
                                             (if (gx#stx-pair? _tl4742448382_)
                                                 (let ((_e4743148401_
                                                        (gx#stx-e
                                                         _tl4742448382_)))
                                                   (let ((_tl4743348406_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4743148401_)))
                                                         (_hd4743248404_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4743148401_))))
                                                     (if (gx#stx-pair?
                                                          _hd4743248404_)
                                                         (let ((_e4743448409_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4743248404_)))
                   (let ((_tl4743648414_
                          (let () (declare (not safe)) (##cdr _e4743448409_)))
                         (_hd4743548412_
                          (let () (declare (not safe)) (##car _e4743448409_))))
                     (if (gx#identifier? _hd4743548412_)
                         (if (gx#stx-eq? '%#ref _hd4743548412_)
                             (if (gx#stx-pair? _tl4743648414_)
                                 (let ((_e4743748417_
                                        (gx#stx-e _tl4743648414_)))
                                   (let ((_tl4743948422_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4743748417_)))
                                         (_hd4743848420_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4743748417_))))
                                     (if (gx#stx-null? _tl4743948422_)
                                         (if (gx#stx-null? _tl4743348406_)
                                             (___kont5530555306_
                                              _hd4743848420_
                                              _hd4742948396_)
                                             (if (gx#stx-pair? _tl4743348406_)
                                                 (let ((_e4745848094_
                                                        (gx#stx-e
                                                         _tl4743348406_)))
                                                   (let ((_tl4746048099_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4745848094_)))
                                                         (_hd4745948097_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4745848094_))))
                                                     (if (gx#stx-pair?
                                                          _hd4745948097_)
                                                         (let ((_e4746148102_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4745948097_)))
                   (let ((_tl4746348107_
                          (let () (declare (not safe)) (##cdr _e4746148102_)))
                         (_hd4746248105_
                          (let () (declare (not safe)) (##car _e4746148102_))))
                     (if (gx#identifier? _hd4746248105_)
                         (if (gx#stx-eq? '%#quote _hd4746248105_)
                             (if (gx#stx-pair? _tl4746348107_)
                                 (let ((_e4746448110_
                                        (gx#stx-e _tl4746348107_)))
                                   (let ((_tl4746648115_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4746448110_)))
                                         (_hd4746548113_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4746448110_))))
                                     (if (gx#stx-null? _tl4746648115_)
                                         (if (gx#stx-null? _tl4746048099_)
                                             (___kont5530755308_
                                              _hd4746548113_
                                              _hd4743248404_
                                              _hd4742948396_)
                                             (___kont5531755318_))
                                         (___kont5531755318_))))
                                 (___kont5531755318_))
                             (if (gx#stx-eq? '%#quote-syntax _hd4746248105_)
                                 (if (gx#stx-pair? _tl4746348107_)
                                     (let ((_e4752447906_
                                            (gx#stx-e _tl4746348107_)))
                                       (let ((_tl4752647911_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4752447906_)))
                                             (_hd4752547909_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4752447906_))))
                                         (if (gx#stx-null? _tl4752647911_)
                                             (if (gx#stx-null? _tl4746048099_)
                                                 (___kont5531155312_
                                                  _hd4752547909_
                                                  _hd4743848420_
                                                  _hd4742948396_)
                                                 (___kont5531755318_))
                                             (___kont5531755318_))))
                                     (___kont5531755318_))
                                 (___kont5531755318_)))
                         (___kont5531755318_))))
                 (___kont5531755318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont5531755318_)))
                                         (if (gx#stx-pair? _tl4743348406_)
                                             (let ((_e4745848094_
                                                    (gx#stx-e _tl4743348406_)))
                                               (let ((_tl4746048099_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4745848094_)))
                                                     (_hd4745948097_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4745848094_))))
                                                 (if (gx#stx-pair?
                                                      _hd4745948097_)
                                                     (let ((_e4746148102_
                                                            (gx#stx-e
                                                             _hd4745948097_)))
                                                       (let ((_tl4746348107_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4746148102_)))
                     (_hd4746248105_
                      (let () (declare (not safe)) (##car _e4746148102_))))
                 (if (gx#identifier? _hd4746248105_)
                     (if (gx#stx-eq? '%#quote _hd4746248105_)
                         (if (gx#stx-pair? _tl4746348107_)
                             (let ((_e4746448110_ (gx#stx-e _tl4746348107_)))
                               (let ((_tl4746648115_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4746448110_)))
                                     (_hd4746548113_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4746448110_))))
                                 (if (gx#stx-null? _tl4746648115_)
                                     (if (gx#stx-null? _tl4746048099_)
                                         (___kont5530755308_
                                          _hd4746548113_
                                          _hd4743248404_
                                          _hd4742948396_)
                                         (___kont5531755318_))
                                     (___kont5531755318_))))
                             (___kont5531755318_))
                         (___kont5531755318_))
                     (___kont5531755318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5531755318_))))
                                             (___kont5531755318_)))))
                                 (if (gx#stx-pair? _tl4743348406_)
                                     (let ((_e4745848094_
                                            (gx#stx-e _tl4743348406_)))
                                       (let ((_tl4746048099_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4745848094_)))
                                             (_hd4745948097_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4745848094_))))
                                         (if (gx#stx-pair? _hd4745948097_)
                                             (let ((_e4746148102_
                                                    (gx#stx-e _hd4745948097_)))
                                               (let ((_tl4746348107_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4746148102_)))
                                                     (_hd4746248105_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4746148102_))))
                                                 (if (gx#identifier?
                                                      _hd4746248105_)
                                                     (if (gx#stx-eq?
                                                          '%#quote
                                                          _hd4746248105_)
                                                         (if (gx#stx-pair?
                                                              _tl4746348107_)
                                                             (let ((_e4746448110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4746348107_)))
                       (let ((_tl4746648115_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4746448110_)))
                             (_hd4746548113_
                              (let ()
                                (declare (not safe))
                                (##car _e4746448110_))))
                         (if (gx#stx-null? _tl4746648115_)
                             (if (gx#stx-null? _tl4746048099_)
                                 (___kont5530755308_
                                  _hd4746548113_
                                  _hd4743248404_
                                  _hd4742948396_)
                                 (___kont5531755318_))
                             (___kont5531755318_))))
                     (___kont5531755318_))
                 (___kont5531755318_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5531755318_))))
                                             (___kont5531755318_))))
                                     (___kont5531755318_)))
                             (if (gx#stx-pair? _tl4743348406_)
                                 (let ((_e4745848094_
                                        (gx#stx-e _tl4743348406_)))
                                   (let ((_tl4746048099_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4745848094_)))
                                         (_hd4745948097_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4745848094_))))
                                     (if (gx#stx-pair? _hd4745948097_)
                                         (let ((_e4746148102_
                                                (gx#stx-e _hd4745948097_)))
                                           (let ((_tl4746348107_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4746148102_)))
                                                 (_hd4746248105_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4746148102_))))
                                             (if (gx#identifier?
                                                  _hd4746248105_)
                                                 (if (gx#stx-eq?
                                                      '%#quote
                                                      _hd4746248105_)
                                                     (if (gx#stx-pair?
                                                          _tl4746348107_)
                                                         (let ((_e4746448110_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4746348107_)))
                   (let ((_tl4746648115_
                          (let () (declare (not safe)) (##cdr _e4746448110_)))
                         (_hd4746548113_
                          (let () (declare (not safe)) (##car _e4746448110_))))
                     (if (gx#stx-null? _tl4746648115_)
                         (if (gx#stx-null? _tl4746048099_)
                             (___kont5530755308_
                              _hd4746548113_
                              _hd4743248404_
                              _hd4742948396_)
                             (if (gx#stx-eq? '%#quote _hd4743548412_)
                                 (if (gx#stx-pair? _tl4743648414_)
                                     (let ((_e4748848006_
                                            (gx#stx-e _tl4743648414_)))
                                       (let ((_tl4749048011_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4748848006_)))
                                             (_hd4748948009_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4748848006_))))
                                         (___kont5531755318_)))
                                     (___kont5531755318_))
                                 (if (gx#stx-eq?
                                      '%#quote-syntax
                                      _hd4743548412_)
                                     (if (gx#stx-pair? _tl4743648414_)
                                         (let ((_e4754847766_
                                                (gx#stx-e _tl4743648414_)))
                                           (let ((_tl4755047771_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4754847766_)))
                                                 (_hd4754947769_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4754847766_))))
                                             (___kont5531755318_)))
                                         (___kont5531755318_))
                                     (___kont5531755318_))))
                         (if (gx#stx-eq? '%#quote _hd4743548412_)
                             (if (gx#stx-pair? _tl4743648414_)
                                 (let ((_e4748848006_
                                        (gx#stx-e _tl4743648414_)))
                                   (let ((_tl4749048011_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4748848006_)))
                                         (_hd4748948009_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4748848006_))))
                                     (if (gx#stx-null? _tl4749048011_)
                                         (if (gx#stx-null? _tl4746048099_)
                                             (___kont5530955310_
                                              _hd4745948097_
                                              _hd4748948009_
                                              _hd4742948396_)
                                             (___kont5531755318_))
                                         (___kont5531755318_))))
                                 (___kont5531755318_))
                             (if (gx#stx-eq? '%#quote-syntax _hd4743548412_)
                                 (if (gx#stx-pair? _tl4743648414_)
                                     (let ((_e4754847766_
                                            (gx#stx-e _tl4743648414_)))
                                       (let ((_tl4755047771_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4754847766_)))
                                             (_hd4754947769_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4754847766_))))
                                         (___kont5531755318_)))
                                     (___kont5531755318_))
                                 (___kont5531755318_))))))
                 (if (gx#stx-eq? '%#quote _hd4743548412_)
                     (if (gx#stx-pair? _tl4743648414_)
                         (let ((_e4748848006_ (gx#stx-e _tl4743648414_)))
                           (let ((_tl4749048011_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4748848006_)))
                                 (_hd4748948009_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4748848006_))))
                             (if (gx#stx-null? _tl4749048011_)
                                 (if (gx#stx-null? _tl4746048099_)
                                     (___kont5530955310_
                                      _hd4745948097_
                                      _hd4748948009_
                                      _hd4742948396_)
                                     (___kont5531755318_))
                                 (___kont5531755318_))))
                         (___kont5531755318_))
                     (if (gx#stx-eq? '%#quote-syntax _hd4743548412_)
                         (if (gx#stx-pair? _tl4743648414_)
                             (let ((_e4754847766_ (gx#stx-e _tl4743648414_)))
                               (let ((_tl4755047771_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4754847766_)))
                                     (_hd4754947769_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4754847766_))))
                                 (___kont5531755318_)))
                             (___kont5531755318_))
                         (___kont5531755318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-eq?
                                                          '%#quote
                                                          _hd4743548412_)
                                                         (if (gx#stx-pair?
                                                              _tl4743648414_)
                                                             (let ((_e4748848006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4743648414_)))
                       (let ((_tl4749048011_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4748848006_)))
                             (_hd4748948009_
                              (let ()
                                (declare (not safe))
                                (##car _e4748848006_))))
                         (if (gx#stx-null? _tl4749048011_)
                             (if (gx#stx-null? _tl4746048099_)
                                 (___kont5530955310_
                                  _hd4745948097_
                                  _hd4748948009_
                                  _hd4742948396_)
                                 (___kont5531755318_))
                             (___kont5531755318_))))
                     (___kont5531755318_))
                 (if (gx#stx-eq? '%#quote-syntax _hd4743548412_)
                     (if (gx#stx-pair? _tl4743648414_)
                         (let ((_e4754847766_ (gx#stx-e _tl4743648414_)))
                           (let ((_tl4755047771_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4754847766_)))
                                 (_hd4754947769_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4754847766_))))
                             (if (gx#stx-null? _tl4755047771_)
                                 (if (gx#stx-eq? '%#ref _hd4746248105_)
                                     (if (gx#stx-pair? _tl4746348107_)
                                         (let ((_e4755747790_
                                                (gx#stx-e _tl4746348107_)))
                                           (let ((_tl4755947795_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4755747790_)))
                                                 (_hd4755847793_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4755747790_))))
                                             (if (gx#stx-null? _tl4755947795_)
                                                 (if (gx#stx-null?
                                                      _tl4746048099_)
                                                     (___kont5531355314_
                                                      _hd4755847793_
                                                      _hd4754947769_
                                                      _hd4742948396_)
                                                     (___kont5531755318_))
                                                 (___kont5531755318_))))
                                         (___kont5531755318_))
                                     (___kont5531755318_))
                                 (___kont5531755318_))))
                         (___kont5531755318_))
                     (___kont5531755318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-eq?
                                                      '%#quote
                                                      _hd4743548412_)
                                                     (if (gx#stx-pair?
                                                          _tl4743648414_)
                                                         (let ((_e4748848006_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4743648414_)))
                   (let ((_tl4749048011_
                          (let () (declare (not safe)) (##cdr _e4748848006_)))
                         (_hd4748948009_
                          (let () (declare (not safe)) (##car _e4748848006_))))
                     (if (gx#stx-null? _tl4749048011_)
                         (if (gx#stx-null? _tl4746048099_)
                             (___kont5530955310_
                              _hd4745948097_
                              _hd4748948009_
                              _hd4742948396_)
                             (___kont5531755318_))
                         (___kont5531755318_))))
                 (___kont5531755318_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-eq?
                                                          '%#quote-syntax
                                                          _hd4743548412_)
                                                         (if (gx#stx-pair?
                                                              _tl4743648414_)
                                                             (let ((_e4754847766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4743648414_)))
                       (let ((_tl4755047771_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4754847766_)))
                             (_hd4754947769_
                              (let ()
                                (declare (not safe))
                                (##car _e4754847766_))))
                         (___kont5531755318_)))
                     (___kont5531755318_))
                 (___kont5531755318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd4743548412_)
                                             (if (gx#stx-pair? _tl4743648414_)
                                                 (let ((_e4748848006_
                                                        (gx#stx-e
                                                         _tl4743648414_)))
                                                   (let ((_tl4749048011_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4748848006_)))
                                                         (_hd4748948009_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4748848006_))))
                                                     (if (gx#stx-null?
                                                          _tl4749048011_)
                                                         (if (gx#stx-null?
                                                              _tl4746048099_)
                                                             (___kont5530955310_
                                                              _hd4745948097_
                                                              _hd4748948009_
                                                              _hd4742948396_)
                                                             (___kont5531755318_))
                                                         (___kont5531755318_))))
                                                 (___kont5531755318_))
                                             (if (gx#stx-eq?
                                                  '%#quote-syntax
                                                  _hd4743548412_)
                                                 (if (gx#stx-pair?
                                                      _tl4743648414_)
                                                     (let ((_e4754847766_
                                                            (gx#stx-e
                                                             _tl4743648414_)))
                                                       (let ((_tl4755047771_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4754847766_)))
                     (_hd4754947769_
                      (let () (declare (not safe)) (##car _e4754847766_))))
                 (___kont5531755318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5531755318_))
                                                 (___kont5531755318_))))))
                                 (if (gx#stx-eq? '%#quote _hd4743548412_)
                                     (if (gx#stx-pair? _tl4743648414_)
                                         (let ((_e4748848006_
                                                (gx#stx-e _tl4743648414_)))
                                           (let ((_tl4749048011_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4748848006_)))
                                                 (_hd4748948009_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4748848006_))))
                                             (___kont5531755318_)))
                                         (___kont5531755318_))
                                     (if (gx#stx-eq?
                                          '%#quote-syntax
                                          _hd4743548412_)
                                         (if (gx#stx-pair? _tl4743648414_)
                                             (let ((_e4754847766_
                                                    (gx#stx-e _tl4743648414_)))
                                               (let ((_tl4755047771_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4754847766_)))
                                                     (_hd4754947769_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4754847766_))))
                                                 (___kont5531755318_)))
                                             (___kont5531755318_))
                                         (___kont5531755318_)))))
                         (if (gx#stx-pair? _tl4743348406_)
                             (let ((_e4745848094_ (gx#stx-e _tl4743348406_)))
                               (let ((_tl4746048099_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4745848094_)))
                                     (_hd4745948097_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4745848094_))))
                                 (if (gx#stx-pair? _hd4745948097_)
                                     (let ((_e4746148102_
                                            (gx#stx-e _hd4745948097_)))
                                       (let ((_tl4746348107_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4746148102_)))
                                             (_hd4746248105_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4746148102_))))
                                         (if (gx#identifier? _hd4746248105_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd4746248105_)
                                                 (if (gx#stx-pair?
                                                      _tl4746348107_)
                                                     (let ((_e4746448110_
                                                            (gx#stx-e
                                                             _tl4746348107_)))
                                                       (let ((_tl4746648115_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4746448110_)))
                     (_hd4746548113_
                      (let () (declare (not safe)) (##car _e4746448110_))))
                 (if (gx#stx-null? _tl4746648115_)
                     (if (gx#stx-null? _tl4746048099_)
                         (___kont5530755308_
                          _hd4746548113_
                          _hd4743248404_
                          _hd4742948396_)
                         (___kont5531755318_))
                     (___kont5531755318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5531755318_))
                                                 (___kont5531755318_))
                                             (___kont5531755318_))))
                                     (___kont5531755318_))))
                             (___kont5531755318_)))))
                 (if (gx#stx-pair? _tl4743348406_)
                     (let ((_e4745848094_ (gx#stx-e _tl4743348406_)))
                       (let ((_tl4746048099_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4745848094_)))
                             (_hd4745948097_
                              (let ()
                                (declare (not safe))
                                (##car _e4745848094_))))
                         (if (gx#stx-pair? _hd4745948097_)
                             (let ((_e4746148102_ (gx#stx-e _hd4745948097_)))
                               (let ((_tl4746348107_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4746148102_)))
                                     (_hd4746248105_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4746148102_))))
                                 (if (gx#identifier? _hd4746248105_)
                                     (if (gx#stx-eq? '%#quote _hd4746248105_)
                                         (if (gx#stx-pair? _tl4746348107_)
                                             (let ((_e4746448110_
                                                    (gx#stx-e _tl4746348107_)))
                                               (let ((_tl4746648115_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4746448110_)))
                                                     (_hd4746548113_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4746448110_))))
                                                 (if (gx#stx-null?
                                                      _tl4746648115_)
                                                     (if (gx#stx-null?
                                                          _tl4746048099_)
                                                         (___kont5530755308_
                                                          _hd4746548113_
                                                          _hd4743248404_
                                                          _hd4742948396_)
                                                         (___kont5531755318_))
                                                     (___kont5531755318_))))
                                             (___kont5531755318_))
                                         (___kont5531755318_))
                                     (___kont5531755318_))))
                             (___kont5531755318_))))
                     (___kont5531755318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont5531755318_))
                                             (___kont5531755318_))))
                                     (___kont5531755318_))
                                 (if (gx#stx-eq? '%#lambda _hd4742648388_)
                                     (if (gx#stx-pair? _tl4742748390_)
                                         (let ((_e4757247630_
                                                (gx#stx-e _tl4742748390_)))
                                           (let ((_tl4757447635_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4757247630_)))
                                                 (_hd4757347633_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4757247630_))))
                                             (if (gx#stx-pair? _hd4757347633_)
                                                 (let ((_e4757547638_
                                                        (gx#stx-e
                                                         _hd4757347633_)))
                                                   (let ((_tl4757747643_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4757547638_)))
                                                         (_hd4757647641_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4757547638_))))
                                                     (if (gx#stx-null?
                                                          _tl4757747643_)
                                                         (if (gx#stx-pair?
                                                              _tl4757447635_)
                                                             (let ((_e4757847646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4757447635_)))
                       (let ((_tl4758047651_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4757847646_)))
                             (_hd4757947649_
                              (let ()
                                (declare (not safe))
                                (##car _e4757847646_))))
                         (if (gx#stx-null? _tl4758047651_)
                             (if (gx#stx-pair? _tl4742448382_)
                                 (let ((_e4758147654_
                                        (gx#stx-e _tl4742448382_)))
                                   (let ((_tl4758347659_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4758147654_)))
                                         (_hd4758247657_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4758147654_))))
                                     (if (gx#stx-pair? _hd4758247657_)
                                         (let ((_e4758447662_
                                                (gx#stx-e _hd4758247657_)))
                                           (let ((_tl4758647667_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4758447662_)))
                                                 (_hd4758547665_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4758447662_))))
                                             (if (gx#identifier?
                                                  _hd4758547665_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd4758547665_)
                                                     (if (gx#stx-pair?
                                                          _tl4758647667_)
                                                         (let ((_e4758747670_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4758647667_)))
                   (let ((_tl4758947675_
                          (let () (declare (not safe)) (##cdr _e4758747670_)))
                         (_hd4758847673_
                          (let () (declare (not safe)) (##car _e4758747670_))))
                     (if (gx#stx-null? _tl4758947675_)
                         (if (gx#stx-null? _tl4758347659_)
                             (___kont5531555316_
                              _hd4758847673_
                              _hd4757947649_
                              _hd4757647641_)
                             (___kont5531755318_))
                         (___kont5531755318_))))
                 (___kont5531755318_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5531755318_))
                                                 (___kont5531755318_))))
                                         (___kont5531755318_))))
                                 (___kont5531755318_))
                             (___kont5531755318_))))
                     (___kont5531755318_))
                 (___kont5531755318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont5531755318_))))
                                         (___kont5531755318_))
                                     (___kont5531755318_)))
                             (___kont5531755318_))))
                     (___kont5531755318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5531755318_))
                                                 (___kont5531755318_))
                                             (___kont5531755318_))))
                                     (___kont5531755318_)))))))))
                  (_assert-type46391_
                   (lambda (_id47290_ _t47291_)
                     (letrec ((_super-e47293_
                               (lambda (_t47390_)
                                 (let ((_tid4739147393_
                                        (##structure-ref
                                         _t47390_
                                         '2
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _tid4739147393_
                                       (let ((_tid47396_ _tid4739147393_))
                                         (gxc#optimizer-resolve-type
                                          _tid47396_))
                                       '#f)))))
                       (let _lp47295_ ((_rest47297_ _env-type46373_))
                         (let* ((_rest4729847306_ _rest47297_)
                                (_else4730047314_ (lambda () '#!void))
                                (_K4730247378_
                                 (lambda (_rest47317_ _type-info47318_)
                                   (let* ((_type-info4731947331_
                                           _type-info47318_)
                                          (_else4732147339_
                                           (lambda () (_lp47295_ _rest47317_)))
                                          (_K4732347354_
                                           (lambda (_val47342_
                                                    _xt47343_
                                                    _xid47344_)
                                             (if (gx#free-identifier=?
                                                  _id47290_
                                                  _xid47344_)
                                                 (if (eq? _t47291_ _xt47343_)
                                                     _val47342_
                                                     (if _val47342_
                                                         (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##structure-instance-of?
                             _t47291_
                             'gxc#!struct-type::t))
                          (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _xt47343_
                             'gxc#!struct-type::t)))
                     (let _subtype?47346_ ((_xt47348_
                                            (_super-e47293_ _xt47343_)))
                       (if (not _xt47348_)
                           '#f
                           (if (eq? _xt47348_ _t47291_)
                               '#t
                               (_subtype?47346_ (_super-e47293_ _xt47348_)))))
                     '#f)
                 (if (and (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _t47291_
                             'gxc#!struct-type::t))
                          (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _xt47343_
                             'gxc#!struct-type::t)))
                     (let _supertype?47350_ ((_t47352_
                                              (_super-e47293_ _t47291_)))
                       (if (not _t47352_)
                           (_lp47295_ _rest47317_)
                           (if (eq? _t47352_ _xt47343_)
                               '#f
                               (_supertype?47350_ (_super-e47293_ _t47352_)))))
                     (_lp47295_ _rest47317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_lp47295_ _rest47317_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _type-info4731947331_))
                                         (let ((_hd4732447357_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _type-info4731947331_)))
                                               (_tl4732547359_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _type-info4731947331_))))
                                           (let ((_xid47362_ _hd4732447357_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _tl4732547359_))
                                                 (let ((_hd4732647364_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _tl4732547359_)))
                                                       (_tl4732747366_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _tl4732547359_))))
                                                   (let ((_xt47369_
                                                          _hd4732647364_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##pair? _tl4732747366_))
                                                         (let ((_hd4732847371_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _tl4732747366_)))
                       (_tl4732947373_
                        (let () (declare (not safe)) (##cdr _tl4732747366_))))
                   (let ((_val47376_ _hd4732847371_))
                     (if (let () (declare (not safe)) (##null? _tl4732947373_))
                         (_K4732347354_ _val47376_ _xt47369_ _xid47362_)
                         (_else4732147339_))))
                 (_else4732147339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else4732147339_))))
                                         (_else4732147339_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest4729847306_))
                               (let ((_hd4730347381_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest4729847306_)))
                                     (_tl4730447383_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest4729847306_))))
                                 (let* ((_type-info47386_ _hd4730347381_)
                                        (_rest47388_ _tl4730447383_))
                                   (_K4730247378_
                                    _rest47388_
                                    _type-info47386_)))
                               (_else4730047314_)))))))
                  (_assert-count46392_
                   (lambda (_id47189_ _sym47190_ _count47191_)
                     (let _lp47193_ ((_rest47195_ _env-type46373_))
                       (let* ((_rest4719647204_ _rest47195_)
                              (_else4719847212_ (lambda () '#!void))
                              (_K4720047278_
                               (lambda (_rest47215_ _type-info47216_)
                                 (let* ((_type-info4721747231_
                                         _type-info47216_)
                                        (_else4721947239_
                                         (lambda () (_lp47193_ _rest47215_)))
                                        (_K4722147247_
                                         (lambda (_val47242_
                                                  _xcount47243_
                                                  _xsym47244_
                                                  _xid47245_)
                                           (if (and (eq? _sym47190_
                                                         _xsym47244_)
                                                    (gx#free-identifier=?
                                                     _id47189_
                                                     _xid47245_))
                                               (if _val47242_
                                                   (fx= _count47191_
                                                        _xcount47243_)
                                                   (if (fx= _count47191_
                                                            _xcount47243_)
                                                       '#f
                                                       (_lp47193_
                                                        _rest47215_)))
                                               (_lp47193_ _rest47215_)))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _type-info4721747231_))
                                       (let ((_hd4722247250_
                                              (let ()
                                                (declare (not safe))
                                                (##car _type-info4721747231_)))
                                             (_tl4722347252_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _type-info4721747231_))))
                                         (let ((_xid47255_ _hd4722247250_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##pair? _tl4722347252_))
                                               (let ((_hd4722447257_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _tl4722347252_)))
                                                     (_tl4722547259_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _tl4722347252_))))
                                                 (let ((_xsym47262_
                                                        _hd4722447257_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##pair? _tl4722547259_))
                                                       (let ((_hd4722647264_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _tl4722547259_)))
                     (_tl4722747266_
                      (let () (declare (not safe)) (##cdr _tl4722547259_))))
                 (let ((_xcount47269_ _hd4722647264_))
                   (if (let () (declare (not safe)) (##pair? _tl4722747266_))
                       (let ((_hd4722847271_
                              (let ()
                                (declare (not safe))
                                (##car _tl4722747266_)))
                             (_tl4722947273_
                              (let ()
                                (declare (not safe))
                                (##cdr _tl4722747266_))))
                         (let ((_val47276_ _hd4722847271_))
                           (if (let ()
                                 (declare (not safe))
                                 (##null? _tl4722947273_))
                               (_K4722147247_
                                _val47276_
                                _xcount47269_
                                _xsym47262_
                                _xid47255_)
                               (_else4721947239_))))
                       (_else4721947239_))))
               (_else4721947239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else4721947239_))))
                                       (_else4721947239_))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest4719647204_))
                             (let ((_hd4720147281_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest4719647204_)))
                                   (_tl4720247283_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest4719647204_))))
                               (let* ((_type-info47286_ _hd4720147281_)
                                      (_rest47288_ _tl4720247283_))
                                 (_K4720047278_ _rest47288_ _type-info47286_)))
                             (_else4719847212_))))))
                  (_assert-eqf46393_
                   (lambda (_id47079_ _sym47080_ _datum47081_)
                     (letrec ((_eqf47083_
                               (lambda (_sym47184_)
                                 (let ((_$e47186_ _sym47184_))
                                   (if (eq? 'eq? _$e47186_)
                                       eq?
                                       (if (eq? 'eqv? _$e47186_)
                                           eqv?
                                           (if (eq? 'equal? _$e47186_)
                                               equal?
                                               (if (eq? 'free-identifier=?
                                                        _$e47186_)
                                                   gx#free-identifier=?
                                                   (if (eq? 'stx-eq? _$e47186_)
                                                       gx#stx-eq?
                                                       (gxc#raise-compile-error
                                                        '"Unexpected eqf symbol"
                                                        _body46134_
                                                        _sym47184_))))))))))
                       (let _lp47085_ ((_rest47087_ _env-type46373_))
                         (let* ((_rest4708847096_ _rest47087_)
                                (_else4709047104_ (lambda () '#!void))
                                (_K4709247172_
                                 (lambda (_rest47107_ _type-info47108_)
                                   (let* ((_type-info4710947123_
                                           _type-info47108_)
                                          (_else4711147131_
                                           (lambda () (_lp47085_ _rest47107_)))
                                          (_K4711347141_
                                           (lambda (_val47134_
                                                    _xdatum47135_
                                                    _xsym47136_
                                                    _xid47137_)
                                             (if (and (eq? _sym47080_
                                                           _xsym47136_)
                                                      (gx#free-identifier=?
                                                       _id47079_
                                                       _xid47137_))
                                                 (let ((_=?47139_
                                                        (_eqf47083_
                                                         _sym47080_)))
                                                   (if _val47134_
                                                       (_=?47139_
                                                        _datum47081_
                                                        _xdatum47135_)
                                                       (if (_=?47139_
                                                            _datum47081_
                                                            _xdatum47135_)
                                                           '#f
                                                           (_lp47085_
                                                            _rest47107_))))
                                                 (_lp47085_ _rest47107_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _type-info4710947123_))
                                         (let ((_hd4711447144_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _type-info4710947123_)))
                                               (_tl4711547146_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _type-info4710947123_))))
                                           (let ((_xid47149_ _hd4711447144_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _tl4711547146_))
                                                 (let ((_hd4711647151_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _tl4711547146_)))
                                                       (_tl4711747153_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _tl4711547146_))))
                                                   (let ((_xsym47156_
                                                          _hd4711647151_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##pair? _tl4711747153_))
                                                         (let ((_hd4711847158_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _tl4711747153_)))
                       (_tl4711947160_
                        (let () (declare (not safe)) (##cdr _tl4711747153_))))
                   (let ((_xdatum47163_ _hd4711847158_))
                     (if (let () (declare (not safe)) (##pair? _tl4711947160_))
                         (let ((_hd4712047165_
                                (let ()
                                  (declare (not safe))
                                  (##car _tl4711947160_)))
                               (_tl4712147167_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _tl4711947160_))))
                           (let ((_val47170_ _hd4712047165_))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl4712147167_))
                                 (_K4711347141_
                                  _val47170_
                                  _xdatum47163_
                                  _xsym47156_
                                  _xid47149_)
                                 (_else4711147131_))))
                         (_else4711147131_))))
                 (_else4711147131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else4711147131_))))
                                         (_else4711147131_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest4708847096_))
                               (let ((_hd4709347175_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest4708847096_)))
                                     (_tl4709447177_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest4708847096_))))
                                 (let* ((_type-info47180_ _hd4709347175_)
                                        (_rest47182_ _tl4709447177_))
                                   (_K4709247172_
                                    _rest47182_
                                    _type-info47180_)))
                               (_else4709047104_)))))))
                  (_bind-e__5371653717_
                   (lambda (_bind46982_ _body46983_ _continue46984_)
                     (let _lp46986_ ((_rest46988_ _bind46982_)
                                     (_subst46989_ '())
                                     (_locals46990_ '())
                                     (_env46991_ _env-bind46374_))
                       (let* ((_rest4699247000_ _rest46988_)
                              (_else4699447014_
                               (lambda ()
                                 (let* ((_body47008_
                                         (if (null? _subst46989_)
                                             _body46983_
                                             (gxc#apply-expression-subst*
                                              _body46983_
                                              _subst46989_)))
                                        (_body47011_
                                         (_do-bind!46385_
                                          _env46991_
                                          (lambda ()
                                            (_continue46984_ _body47008_)))))
                                   (if (null? _locals46990_)
                                       _body47011_
                                       (cons '%#let-values
                                             (cons _locals46990_
                                                   (cons _body47011_ '())))))))
                              (_K4699647055_
                               (lambda (_rest47017_ _bind47018_)
                                 (let* ((_bind4701947026_ _bind47018_)
                                        (_E4702147030_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _bind4701947026_)))
                                        (_K4702247043_
                                         (lambda (_expr47033_ _id47034_)
                                           (let* ((_sexpr47036_
                                                   (gxc#apply-generate-runtime-repr
                                                    _expr47033_))
                                                  (_$e47038_
                                                   (assget _sexpr47036_
                                                           _env-bind46374_)))
                                             (if _$e47038_
                                                 ((lambda (_xid47041_)
                                                    (_lp46986_
                                                     _rest47017_
                                                     (cons (cons _id47034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xid47041_)
                   _subst46989_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _locals46990_
                                                     _env46991_))
                                                  _$e47038_)
                                                 (_lp46986_
                                                  _rest47017_
                                                  _subst46989_
                                                  (cons (cons (cons _id47034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _expr47033_ '()))
                _locals46990_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons _sexpr47036_
                                                              _id47034_)
                                                        _env46991_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _bind4701947026_))
                                       (let ((_hd4702347046_
                                              (let ()
                                                (declare (not safe))
                                                (##car _bind4701947026_)))
                                             (_tl4702447048_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _bind4701947026_))))
                                         (let* ((_id47051_ _hd4702347046_)
                                                (_expr47053_ _tl4702447048_))
                                           (_K4702247043_
                                            _expr47053_
                                            _id47051_)))
                                       (_E4702147030_))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest4699247000_))
                             (let ((_hd4699747058_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest4699247000_)))
                                   (_tl4699847060_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest4699247000_))))
                               (let* ((_bind47063_ _hd4699747058_)
                                      (_rest47065_ _tl4699847060_))
                                 (_K4699647055_ _rest47065_ _bind47063_)))
                             (_else4699447014_))))))
                  (_bind-e__0__5371853719_
                   (lambda (_bind47070_ _body47071_)
                     (let ((_continue47073_ _optimize-e46387_))
                       (_bind-e__5371653717_
                        _bind47070_
                        _body47071_
                        _continue47073_))))
                  (_bind-e46394_
                   (lambda _g56815_
                     (let ((_g56814_
                            (let () (declare (not safe)) (##length _g56815_))))
                       (cond ((let () (declare (not safe)) (##fx= _g56814_ 2))
                              (apply _bind-e__0__5371853719_ _g56815_))
                             ((let () (declare (not safe)) (##fx= _g56814_ 3))
                              (apply _bind-e__5371653717_ _g56815_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g56815_))))))
                  (_lookup-block46395_
                   (lambda (_id46977_)
                     (find (lambda (_block46979_)
                             (gx#free-identifier=?
                              (car _block46979_)
                              _id46977_))
                           _blocks46137_)))
                  (_inline-block46396_
                   (lambda (_block46853_ _args46854_)
                     (let* ((_kont46856_ (caddr _block46853_))
                            (_g4685846884_
                             (lambda (_g4685946881_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g4685946881_)))
                            (_g4685746974_
                             (lambda (_g4685946887_)
                               (if (gx#stx-pair? _g4685946887_)
                                   (let ((_e4686246889_
                                          (gx#stx-e _g4685946887_)))
                                     (let ((_hd4686346892_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4686246889_)))
                                           (_tl4686446894_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4686246889_))))
                                       (if (gx#identifier? _hd4686346892_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd4686346892_)
                                               (if (gx#stx-pair?
                                                    _tl4686446894_)
                                                   (let ((_e4686546897_
                                                          (gx#stx-e
                                                           _tl4686446894_)))
                                                     (let ((_hd4686646900_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4686546897_)))
                                                           (_tl4686746902_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4686546897_))))
                                                       (if (gx#stx-pair/null?
                                                            _hd4686646900_)
                                                           (let ((_g56816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd4686646900_ '0)))
                     (begin
                       (let ((_g56817_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g56816_)
                                    (##vector-length _g56816_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g56817_ 2)))
                             (error "Context expects 2 values" _g56817_)))
                       (let ((_target4686846905_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g56816_ 0)))
                             (_tl4687046907_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g56816_ 1))))
                         (if (gx#stx-null? _tl4687046907_)
                             (letrec ((_loop4687146910_
                                       (lambda (_hd4686946913_ _id4687546915_)
                                         (if (gx#stx-pair? _hd4686946913_)
                                             (let ((_e4687246918_
                                                    (gx#stx-e _hd4686946913_)))
                                               (let ((_lp-hd4687346921_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4687246918_)))
                                                     (_lp-tl4687446923_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4687246918_))))
                                                 (_loop4687146910_
                                                  _lp-tl4687446923_
                                                  (cons _lp-hd4687346921_
                                                        _id4687546915_))))
                                             (let ((_id4687646926_
                                                    (reverse _id4687546915_)))
                                               (if (gx#stx-pair?
                                                    _tl4686746902_)
                                                   (let ((_e4687746929_
                                                          (gx#stx-e
                                                           _tl4686746902_)))
                                                     (let ((_hd4687846932_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4687746929_)))
                                                           (_tl4687946934_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4687746929_))))
                                                       (if (gx#stx-null?
                                                            _tl4687946934_)
                                                           ((lambda (_L46937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L46938_)
                      (if (null? (foldr1 (lambda (_g4695746960_ _g4695846962_)
                                           (cons _g4695746960_ _g4695846962_))
                                         '()
                                         _L46938_))
                          _L46937_
                          (let ((_subst46972_
                                 (map cons
                                      (foldr1 (lambda (_g4696446967_
                                                       _g4696546969_)
                                                (cons _g4696446967_
                                                      _g4696546969_))
                                              '()
                                              _L46938_)
                                      _args46854_)))
                            (gxc#apply-expression-subst*
                             _L46937_
                             _subst46972_))))
                    _hd4687846932_
                    _id4687646926_)
                   (_g4685846884_ _g4685946887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4685846884_
                                                    _g4685946887_)))))))
                               (_loop4687146910_ _target4686846905_ '()))
                             (_g4685846884_ _g4685946887_)))))
                   (_g4685846884_ _g4685946887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4685846884_
                                                    _g4685946887_))
                                               (_g4685846884_ _g4685946887_))
                                           (_g4685846884_ _g4685946887_))))
                                   (_g4685846884_ _g4685946887_)))))
                       (_g4685746974_ _kont46856_))))
                  (_nonlinear-block?46397_
                   (lambda (_block46402_)
                     (letrec ((_nonlinear-expr?46404_
                               (lambda (_expr46512_)
                                 (let* ((___stx5577355774_ _expr46512_)
                                        (_g4651846584_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx5577355774_))))
                                   (let ((___kont5577555776_ (lambda () '#t))
                                         (___kont5577755778_
                                          (lambda (_L46783_)
                                            (let* ((___stx5575555756_ _L46783_)
                                                   (_g4680146810_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx5575555756_))))
                                              (let ((___kont5575755758_
                                                     (lambda () '#f))
                                                    (___kont5575955760_
                                                     (lambda () '#t)))
                                                (if (gx#stx-pair?
                                                     ___stx5575555756_)
                                                    (let ((_e4680346822_
                                                           (gx#stx-e
                                                            ___stx5575555756_)))
                                                      (let ((_tl4680546827_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4680346822_)))
                    (_hd4680446825_
                     (let () (declare (not safe)) (##car _e4680346822_))))
                (if (gx#identifier? _hd4680446825_)
                    (if (gx#stx-eq? '%#call _hd4680446825_)
                        (___kont5575755758_)
                        (___kont5575955760_))
                    (___kont5575955760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont5575955760_))))))
                                         (___kont5578155782_
                                          (lambda (_L46681_)
                                            (_nonlinear-expr?46404_ _L46681_)))
                                         (___kont5578355784_
                                          (lambda (_L46628_ _L46629_ _L46630_)
                                            (let ((_$e46649_
                                                   (_nonlinear-expr?46404_
                                                    _L46629_)))
                                              (if _$e46649_
                                                  _$e46649_
                                                  (_nonlinear-expr?46404_
                                                   _L46628_)))))
                                         (___kont5578555786_ (lambda () '#f)))
                                     (let* ((___match5583655837_
                                             (lambda (_e4655646657_
                                                      _hd4655746660_
                                                      _tl4655846662_
                                                      _e4655946665_
                                                      _hd4656046668_
                                                      _tl4656146670_)
                                               (if (gx#stx-pair?
                                                    _tl4656146670_)
                                                   (let ((_e4656246673_
                                                          (gx#stx-e
                                                           _tl4656146670_)))
                                                     (let ((_tl4656446678_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4656246673_)))
                                                           (_hd4656346676_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4656246673_))))
                                                       (if (gx#stx-null?
                                                            _tl4656446678_)
                                                           (___kont5578155782_
                                                            _hd4656346676_)
                                                           (___kont5578555786_))))
                                                   (___kont5578555786_))))
                                            (___match5582055821_
                                             (lambda (_e4652446699_
                                                      _hd4652546702_
                                                      _tl4652646704_
                                                      _e4652746707_
                                                      _hd4652846710_
                                                      _tl4652946712_
                                                      ___splice5577955780_
                                                      _target4653046715_
                                                      _tl4653246717_)
                                               (letrec ((_loop4653346720_
                                                         (lambda (_hd4653146723_)
                                                           (if (gx#stx-pair?
                                                                _hd4653146723_)
                                                               (let ((_e4653446726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd4653146723_)))
                         (let ((_lp-tl4653646731_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4653446726_)))
                               (_lp-hd4653546729_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4653446726_))))
                           (if (gx#stx-pair? _lp-hd4653546729_)
                               (let ((_e4653746734_
                                      (gx#stx-e _lp-hd4653546729_)))
                                 (let ((_tl4653946739_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4653746734_)))
                                       (_hd4653846737_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4653746734_))))
                                   (if (gx#stx-pair? _hd4653846737_)
                                       (let ((_e4654046742_
                                              (gx#stx-e _hd4653846737_)))
                                         (let ((_tl4654246747_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4654046742_)))
                                               (_hd4654146745_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4654046742_))))
                                           (if (gx#stx-null? _tl4654246747_)
                                               (if (gx#stx-pair?
                                                    _tl4653946739_)
                                                   (let ((_e4654346750_
                                                          (gx#stx-e
                                                           _tl4653946739_)))
                                                     (let ((_tl4654546755_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4654346750_)))
                                                           (_hd4654446753_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4654346750_))))
                                                       (if (gx#stx-pair?
                                                            _hd4654446753_)
                                                           (let ((_e4654646758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd4654446753_)))
                     (let ((_tl4654846763_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4654646758_)))
                           (_hd4654746761_
                            (let ()
                              (declare (not safe))
                              (##car _e4654646758_))))
                       (if (gx#identifier? _hd4654746761_)
                           (if (gx#stx-eq? '%#ref _hd4654746761_)
                               (if (gx#stx-pair? _tl4654846763_)
                                   (let ((_e4654946766_
                                          (gx#stx-e _tl4654846763_)))
                                     (let ((_tl4655146771_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4654946766_)))
                                           (_hd4655046769_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4654946766_))))
                                       (if (gx#stx-null? _tl4655146771_)
                                           (if (gx#stx-null? _tl4654546755_)
                                               (_loop4653346720_
                                                _lp-tl4653646731_)
                                               (___match5583655837_
                                                _e4652446699_
                                                _hd4652546702_
                                                _tl4652646704_
                                                _e4652746707_
                                                _hd4652846710_
                                                _tl4652946712_))
                                           (___match5583655837_
                                            _e4652446699_
                                            _hd4652546702_
                                            _tl4652646704_
                                            _e4652746707_
                                            _hd4652846710_
                                            _tl4652946712_))))
                                   (___match5583655837_
                                    _e4652446699_
                                    _hd4652546702_
                                    _tl4652646704_
                                    _e4652746707_
                                    _hd4652846710_
                                    _tl4652946712_))
                               (___match5583655837_
                                _e4652446699_
                                _hd4652546702_
                                _tl4652646704_
                                _e4652746707_
                                _hd4652846710_
                                _tl4652946712_))
                           (___match5583655837_
                            _e4652446699_
                            _hd4652546702_
                            _tl4652646704_
                            _e4652746707_
                            _hd4652846710_
                            _tl4652946712_))))
                   (___match5583655837_
                    _e4652446699_
                    _hd4652546702_
                    _tl4652646704_
                    _e4652746707_
                    _hd4652846710_
                    _tl4652946712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___match5583655837_
                                                    _e4652446699_
                                                    _hd4652546702_
                                                    _tl4652646704_
                                                    _e4652746707_
                                                    _hd4652846710_
                                                    _tl4652946712_))
                                               (___match5583655837_
                                                _e4652446699_
                                                _hd4652546702_
                                                _tl4652646704_
                                                _e4652746707_
                                                _hd4652846710_
                                                _tl4652946712_))))
                                       (___match5583655837_
                                        _e4652446699_
                                        _hd4652546702_
                                        _tl4652646704_
                                        _e4652746707_
                                        _hd4652846710_
                                        _tl4652946712_))))
                               (___match5583655837_
                                _e4652446699_
                                _hd4652546702_
                                _tl4652646704_
                                _e4652746707_
                                _hd4652846710_
                                _tl4652946712_))))
                       (let ()
                         (if (gx#stx-pair? _tl4652946712_)
                             (let ((_e4655246775_ (gx#stx-e _tl4652946712_)))
                               (let ((_tl4655446780_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4655246775_)))
                                     (_hd4655346778_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4655246775_))))
                                 (if (gx#stx-null? _tl4655446780_)
                                     (___kont5577755778_ _hd4655346778_)
                                     (___kont5578555786_))))
                             (___kont5578555786_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4653346720_
                                                  _target4653046715_)))))
                                       (if (gx#stx-pair? ___stx5577355774_)
                                           (let ((_e4652046840_
                                                  (gx#stx-e
                                                   ___stx5577355774_)))
                                             (let ((_tl4652246845_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4652046840_)))
                                                   (_hd4652146843_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4652046840_))))
                                               (if (gx#identifier?
                                                    _hd4652146843_)
                                                   (if (gx#stx-eq?
                                                        '%#letrec-values
                                                        _hd4652146843_)
                                                       (___kont5577555776_)
                                                       (if (gx#stx-eq?
                                                            '%#let-values
                                                            _hd4652146843_)
                                                           (if (gx#stx-pair?
                                                                _tl4652246845_)
                                                               (let ((_e4652746707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl4652246845_)))
                         (let ((_tl4652946712_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4652746707_)))
                               (_hd4652846710_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4652746707_))))
                           (if (gx#stx-pair/null? _hd4652846710_)
                               (let ((___splice5577955780_
                                      (gx#syntax-split-splice
                                       _hd4652846710_
                                       '0)))
                                 (let ((_tl4653246717_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5577955780_
                                           '1)))
                                       (_target4653046715_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5577955780_
                                           '0))))
                                   (if (gx#stx-null? _tl4653246717_)
                                       (___match5582055821_
                                        _e4652046840_
                                        _hd4652146843_
                                        _tl4652246845_
                                        _e4652746707_
                                        _hd4652846710_
                                        _tl4652946712_
                                        ___splice5577955780_
                                        _target4653046715_
                                        _tl4653246717_)
                                       (if (gx#stx-pair? _tl4652946712_)
                                           (let ((_e4656246673_
                                                  (gx#stx-e _tl4652946712_)))
                                             (let ((_tl4656446678_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4656246673_)))
                                                   (_hd4656346676_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4656246673_))))
                                               (if (gx#stx-null?
                                                    _tl4656446678_)
                                                   (___kont5578155782_
                                                    _hd4656346676_)
                                                   (___kont5578555786_))))
                                           (___kont5578555786_)))))
                               (if (gx#stx-pair? _tl4652946712_)
                                   (let ((_e4656246673_
                                          (gx#stx-e _tl4652946712_)))
                                     (let ((_tl4656446678_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4656246673_)))
                                           (_hd4656346676_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4656246673_))))
                                       (if (gx#stx-null? _tl4656446678_)
                                           (___kont5578155782_ _hd4656346676_)
                                           (___kont5578555786_))))
                                   (___kont5578555786_)))))
                       (___kont5578555786_))
                   (if (gx#stx-eq? '%#if _hd4652146843_)
                       (if (gx#stx-pair? _tl4652246845_)
                           (let ((_e4657146604_ (gx#stx-e _tl4652246845_)))
                             (let ((_tl4657346609_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4657146604_)))
                                   (_hd4657246607_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4657146604_))))
                               (if (gx#stx-pair? _tl4657346609_)
                                   (let ((_e4657446612_
                                          (gx#stx-e _tl4657346609_)))
                                     (let ((_tl4657646617_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4657446612_)))
                                           (_hd4657546615_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4657446612_))))
                                       (if (gx#stx-pair? _tl4657646617_)
                                           (let ((_e4657746620_
                                                  (gx#stx-e _tl4657646617_)))
                                             (let ((_tl4657946625_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4657746620_)))
                                                   (_hd4657846623_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4657746620_))))
                                               (if (gx#stx-null?
                                                    _tl4657946625_)
                                                   (___kont5578355784_
                                                    _hd4657846623_
                                                    _hd4657546615_
                                                    _hd4657246607_)
                                                   (___kont5578555786_))))
                                           (___kont5578555786_))))
                                   (___kont5578555786_))))
                           (___kont5578555786_))
                       (___kont5578555786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont5578555786_))))
                                           (___kont5578555786_))))))))
                       (let* ((_kont46406_ (caddr _block46402_))
                              (_g4640846434_
                               (lambda (_g4640946431_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g4640946431_)))
                              (_g4640746509_
                               (lambda (_g4640946437_)
                                 (if (gx#stx-pair? _g4640946437_)
                                     (let ((_e4641246439_
                                            (gx#stx-e _g4640946437_)))
                                       (let ((_hd4641346442_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4641246439_)))
                                             (_tl4641446444_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4641246439_))))
                                         (if (gx#identifier? _hd4641346442_)
                                             (if (gx#stx-eq?
                                                  '%#lambda
                                                  _hd4641346442_)
                                                 (if (gx#stx-pair?
                                                      _tl4641446444_)
                                                     (let ((_e4641546447_
                                                            (gx#stx-e
                                                             _tl4641446444_)))
                                                       (let ((_hd4641646450_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e4641546447_)))
                     (_tl4641746452_
                      (let () (declare (not safe)) (##cdr _e4641546447_))))
                 (if (gx#stx-pair/null? _hd4641646450_)
                     (let ((_g56818_
                            (gx#syntax-split-splice _hd4641646450_ '0)))
                       (begin
                         (let ((_g56819_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g56818_)
                                      (##vector-length _g56818_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g56819_ 2)))
                               (error "Context expects 2 values" _g56819_)))
                         (let ((_target4641846455_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g56818_ 0)))
                               (_tl4642046457_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g56818_ 1))))
                           (if (gx#stx-null? _tl4642046457_)
                               (letrec ((_loop4642146460_
                                         (lambda (_hd4641946463_
                                                  _id4642546465_)
                                           (if (gx#stx-pair? _hd4641946463_)
                                               (let ((_e4642246468_
                                                      (gx#stx-e
                                                       _hd4641946463_)))
                                                 (let ((_lp-hd4642346471_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4642246468_)))
                                                       (_lp-tl4642446473_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4642246468_))))
                                                   (_loop4642146460_
                                                    _lp-tl4642446473_
                                                    (cons _lp-hd4642346471_
                                                          _id4642546465_))))
                                               (let ((_id4642646476_
                                                      (reverse _id4642546465_)))
                                                 (if (gx#stx-pair?
                                                      _tl4641746452_)
                                                     (let ((_e4642746479_
                                                            (gx#stx-e
                                                             _tl4641746452_)))
                                                       (let ((_hd4642846482_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e4642746479_)))
                     (_tl4642946484_
                      (let () (declare (not safe)) (##cdr _e4642746479_))))
                 (if (gx#stx-null? _tl4642946484_)
                     ((lambda (_L46487_ _L46488_)
                        (_nonlinear-expr?46404_ _L46487_))
                      _hd4642846482_
                      _id4642646476_)
                     (_g4640846434_ _g4640946437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4640846434_
                                                      _g4640946437_)))))))
                                 (_loop4642146460_ _target4641846455_ '()))
                               (_g4640846434_ _g4640946437_)))))
                     (_g4640846434_ _g4640946437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4640846434_
                                                      _g4640946437_))
                                                 (_g4640846434_ _g4640946437_))
                                             (_g4640846434_ _g4640946437_))))
                                     (_g4640846434_ _g4640946437_)))))
                         (_g4640746509_ _kont46406_))))))
          (_do-assert46376_
           _assert46135_
           (lambda ()
             (_do-bind46383_
              _bind46136_
              (lambda ()
                (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                    (_do-splice!46386_
                     (lambda () (_optimize-e46387_ _body46134_)))
                    (_optimize-e46387_ _body46134_)))))))))
    (define gxc#optimize-match-prune-blocks
      (lambda (_blocks46046_ _konts46047_)
        (letrec* ((_rtab46049_ (make-table 'test: eq?)))
          (for-each
           (lambda (_block46051_)
             (gxc#apply-collect-runtime-refs (caddr _block46051_) _rtab46049_))
           _konts46047_)
          (let _lp46053_ ((_rest46055_ _blocks46046_) (_r46056_ '()))
            (let* ((_rest4605746065_ _rest46055_)
                   (_else4605946073_ (lambda () (reverse _r46056_)))
                   (_K4606146122_
                    (lambda (_rest46076_ _block46077_)
                      (let* ((_block4607846089_ _block46077_)
                             (_E4608046093_
                              (lambda ()
                                (error '"No clause matching"
                                       _block4607846089_)))
                             (_K4608146100_
                              (lambda (_kont46096_ _type46097_ _name46098_)
                                (if (table-ref
                                     _rtab46049_
                                     (gxc#identifier-symbol _name46098_)
                                     '#f)
                                    (begin
                                      (gxc#apply-collect-runtime-refs
                                       _kont46096_
                                       _rtab46049_)
                                      (_lp46053_
                                       _rest46076_
                                       (cons _block46077_ _r46056_)))
                                    (_lp46053_ _rest46076_ _r46056_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _block4607846089_))
                            (let ((_hd4608246103_
                                   (let ()
                                     (declare (not safe))
                                     (##car _block4607846089_)))
                                  (_tl4608346105_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _block4607846089_))))
                              (let ((_name46108_ _hd4608246103_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl4608346105_))
                                    (let ((_hd4608446110_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl4608346105_)))
                                          (_tl4608546112_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl4608346105_))))
                                      (let ((_type46115_ _hd4608446110_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl4608546112_))
                                            (let* ((_hd4608646117_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _tl4608546112_)))
                                                   (_kont46120_
                                                    _hd4608646117_))
                                              (_K4608146100_
                                               _kont46120_
                                               _type46115_
                                               _name46108_))
                                            (_E4608046093_))))
                                    (_E4608046093_))))
                            (_E4608046093_))))))
              (if (let () (declare (not safe)) (##pair? _rest4605746065_))
                  (let ((_hd4606246125_
                         (let ()
                           (declare (not safe))
                           (##car _rest4605746065_)))
                        (_tl4606346127_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest4605746065_))))
                    (let* ((_block46130_ _hd4606246125_)
                           (_rest46132_ _tl4606346127_))
                      (_K4606146122_ _rest46132_ _block46130_)))
                  (_else4605946073_)))))))
    (define gxc#optimize-match-fuse-restart-blocks
      (lambda (_blocks45970_ _konts45971_)
        (let* ((_blocks4597245988_ _blocks45970_)
               (_else4597445996_ (lambda () _blocks45970_))
               (_K4597646014_
                (lambda (_rest45999_ _kont46000_ _name46001_)
                  (letrec* ((_rtab46003_ (make-table 'test: eq?)))
                    (for-each
                     (lambda (_block46005_)
                       (gxc#apply-collect-runtime-refs
                        (caddr _block46005_)
                        _rtab46003_))
                     _konts45971_)
                    (if (fx= (table-ref
                              _rtab46003_
                              (gxc#identifier-symbol _name46001_))
                             '1)
                        (let* ((_rblock46009_
                                (find (lambda (_block46007_)
                                        (gxc#apply-find-var-refs
                                         (caddr _block46007_)
                                         (cons _name46001_ '())))
                                      _konts45971_))
                               (_assert46011_
                                (gxc#optimize-match-assert-restart
                                 _rblock46009_
                                 _name46001_)))
                          (cons (cons _name46001_
                                      (cons 'restart:
                                            (cons _kont46000_
                                                  (cons _assert46011_ '()))))
                                _rest45999_))
                        _blocks45970_)))))
          (if (let () (declare (not safe)) (##pair? _blocks4597245988_))
              (let ((_hd4597746017_
                     (let () (declare (not safe)) (##car _blocks4597245988_)))
                    (_tl4597846019_
                     (let () (declare (not safe)) (##cdr _blocks4597245988_))))
                (if (let () (declare (not safe)) (##pair? _hd4597746017_))
                    (let ((_hd4597946022_
                           (let ()
                             (declare (not safe))
                             (##car _hd4597746017_)))
                          (_tl4598046024_
                           (let ()
                             (declare (not safe))
                             (##cdr _hd4597746017_))))
                      (let ((_name46027_ _hd4597946022_))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl4598046024_))
                            (let ((_hd4598146029_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl4598046024_)))
                                  (_tl4598246031_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl4598046024_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd4598146029_ 'restart:))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl4598246031_))
                                      (let ((_hd4598346034_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl4598246031_)))
                                            (_tl4598446036_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl4598246031_))))
                                        (let ((_kont46039_ _hd4598346034_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl4598446036_))
                                              (let ((_tl4598646041_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl4598446036_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl4598646041_))
                                                    (let ((_rest46044_
                                                           _tl4597846019_))
                                                      (_K4597646014_
                                                       _rest46044_
                                                       _kont46039_
                                                       _name46027_))
                                                    (_else4597445996_)))
                                              (_else4597445996_))))
                                      (_else4597445996_))
                                  (_else4597445996_)))
                            (_else4597445996_))))
                    (_else4597445996_)))
              (_else4597445996_)))))
    (define gxc#optimize-match-assert-restart
      (lambda (_block45366_ _name45367_)
        (letrec ((_assert-restart45369_
                  (lambda (_expr45525_ _assert45526_)
                    (let* ((___stx5587755878_ _expr45525_)
                           (_g4553245629_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx5587755878_))))
                      (let ((___kont5587955880_
                             (lambda (_L45945_ _L45946_ _L45947_)
                               (let ((_$e45964_
                                      (_assert-restart45369_
                                       _L45946_
                                       (cons (cons _L45947_ '#t)
                                             _assert45526_))))
                                 (if _$e45964_
                                     _$e45964_
                                     (_assert-restart45369_
                                      _L45945_
                                      (cons (cons _L45947_ '#f)
                                            _assert45526_))))))
                            (___kont5588155882_
                             (lambda (_L45893_)
                               (if (gx#free-identifier=? _L45893_ _name45367_)
                                   _assert45526_
                                   '#f)))
                            (___kont5588355884_
                             (lambda (_L45843_)
                               (_assert-restart45369_ _L45843_ _assert45526_)))
                            (___kont5588555886_
                             (lambda (_L45769_
                                      _L45770_
                                      _L45771_
                                      _L45772_
                                      _L45773_)
                               (_assert-restart45369_ _L45771_ _assert45526_)))
                            (___kont5589155892_ (lambda () '#f)))
                        (let ((___match5604656047_
                               (lambda (_e4557745641_
                                        _hd4557845644_
                                        _tl4557945646_
                                        _e4558045649_
                                        _hd4558145652_
                                        _tl4558245654_
                                        _e4558345657_
                                        _hd4558445660_
                                        _tl4558545662_
                                        _e4558645665_
                                        _hd4558745668_
                                        _tl4558845670_
                                        _e4558945673_
                                        _hd4559045676_
                                        _tl4559145678_
                                        _e4559245681_
                                        _hd4559345684_
                                        _tl4559445686_
                                        _e4559545689_
                                        _hd4559645692_
                                        _tl4559745694_
                                        _e4559845697_
                                        _hd4559945700_
                                        _tl4560045702_
                                        ___splice5588755888_
                                        _target4560145705_
                                        _tl4560345707_)
                                 (letrec ((_loop4560445710_
                                           (lambda (_hd4560245713_
                                                    _id4560845715_)
                                             (if (gx#stx-pair? _hd4560245713_)
                                                 (let ((_e4560545718_
                                                        (gx#stx-e
                                                         _hd4560245713_)))
                                                   (let ((_lp-tl4560745723_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4560545718_)))
                                                         (_lp-hd4560645721_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4560545718_))))
                                                     (_loop4560445710_
                                                      _lp-tl4560745723_
                                                      (cons _lp-hd4560645721_
                                                            _id4560845715_))))
                                                 (let ((_id4560945726_
                                                        (reverse _id4560845715_)))
                                                   (if (gx#stx-pair?
                                                        _tl4560045702_)
                                                       (let ((_e4561045729_
                                                              (gx#stx-e
                                                               _tl4560045702_)))
                                                         (let ((_tl4561245734_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e4561045729_)))
                       (_hd4561145732_
                        (let () (declare (not safe)) (##car _e4561045729_))))
                   (if (gx#stx-null? _tl4561245734_)
                       (if (gx#stx-null? _tl4559445686_)
                           (if (gx#stx-pair/null? _tl4558545662_)
                               (let ((___splice5588955890_
                                      (gx#syntax-split-splice
                                       _tl4558545662_
                                       '0)))
                                 (let ((_tl4561545739_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5588955890_
                                           '1)))
                                       (_target4561345737_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5588955890_
                                           '0))))
                                   (if (gx#stx-null? _tl4561545739_)
                                       (letrec ((_loop4561645742_
                                                 (lambda (_hd4561445745_
                                                          _bind4562045747_)
                                                   (if (gx#stx-pair?
                                                        _hd4561445745_)
                                                       (let ((_e4561745750_
                                                              (gx#stx-e
                                                               _hd4561445745_)))
                                                         (let ((_lp-tl4561945755_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e4561745750_)))
                       (_lp-hd4561845753_
                        (let () (declare (not safe)) (##car _e4561745750_))))
                   (_loop4561645742_
                    _lp-tl4561945755_
                    (cons _lp-hd4561845753_ _bind4562045747_))))
               (let ((_bind4562145758_ (reverse _bind4562045747_)))
                 (if (gx#stx-pair? _tl4558245654_)
                     (let ((_e4562245761_ (gx#stx-e _tl4558245654_)))
                       (let ((_tl4562445766_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4562245761_)))
                             (_hd4562345764_
                              (let ()
                                (declare (not safe))
                                (##car _e4562245761_))))
                         (if (gx#stx-null? _tl4562445766_)
                             (___kont5588555886_
                              _hd4562345764_
                              _bind4562145758_
                              _hd4561145732_
                              _id4560945726_
                              _hd4559045676_)
                             (___kont5589155892_))))
                     (___kont5589155892_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop4561645742_
                                          _target4561345737_
                                          '()))
                                       (___kont5589155892_))))
                               (___kont5589155892_))
                           (___kont5589155892_))
                       (___kont5589155892_))))
               (___kont5589155892_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop4560445710_
                                    _target4560145705_
                                    '())))))
                          (if (gx#stx-pair? ___stx5587755878_)
                              (let ((_e4553745913_
                                     (gx#stx-e ___stx5587755878_)))
                                (let ((_tl4553945918_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4553745913_)))
                                      (_hd4553845916_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4553745913_))))
                                  (if (gx#identifier? _hd4553845916_)
                                      (if (gx#stx-eq? '%#if _hd4553845916_)
                                          (if (gx#stx-pair? _tl4553945918_)
                                              (let ((_e4554045921_
                                                     (gx#stx-e
                                                      _tl4553945918_)))
                                                (let ((_tl4554245926_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4554045921_)))
                                                      (_hd4554145924_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4554045921_))))
                                                  (if (gx#stx-pair?
                                                       _tl4554245926_)
                                                      (let ((_e4554345929_
                                                             (gx#stx-e
                                                              _tl4554245926_)))
                                                        (let ((_tl4554545934_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4554345929_)))
                      (_hd4554445932_
                       (let () (declare (not safe)) (##car _e4554345929_))))
                  (if (gx#stx-pair? _tl4554545934_)
                      (let ((_e4554645937_ (gx#stx-e _tl4554545934_)))
                        (let ((_tl4554845942_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4554645937_)))
                              (_hd4554745940_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4554645937_))))
                          (if (gx#stx-null? _tl4554845942_)
                              (___kont5587955880_
                               _hd4554745940_
                               _hd4554445932_
                               _hd4554145924_)
                              (___kont5589155892_))))
                      (___kont5589155892_))))
              (___kont5589155892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont5589155892_))
                                          (if (gx#stx-eq?
                                               '%#call
                                               _hd4553845916_)
                                              (if (gx#stx-pair? _tl4553945918_)
                                                  (let ((_e4555345869_
                                                         (gx#stx-e
                                                          _tl4553945918_)))
                                                    (let ((_tl4555545874_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4555345869_)))
                                                          (_hd4555445872_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4555345869_))))
                                                      (if (gx#stx-pair?
                                                           _hd4555445872_)
                                                          (let ((_e4555645877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd4555445872_)))
                    (let ((_tl4555845882_
                           (let () (declare (not safe)) (##cdr _e4555645877_)))
                          (_hd4555745880_
                           (let ()
                             (declare (not safe))
                             (##car _e4555645877_))))
                      (if (gx#identifier? _hd4555745880_)
                          (if (gx#stx-eq? '%#ref _hd4555745880_)
                              (if (gx#stx-pair? _tl4555845882_)
                                  (let ((_e4555945885_
                                         (gx#stx-e _tl4555845882_)))
                                    (let ((_tl4556145890_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4555945885_)))
                                          (_hd4556045888_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4555945885_))))
                                      (if (gx#stx-null? _tl4556145890_)
                                          (___kont5588155882_ _hd4556045888_)
                                          (___kont5589155892_))))
                                  (___kont5589155892_))
                              (___kont5589155892_))
                          (___kont5589155892_))))
                  (___kont5589155892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont5589155892_))
                                              (if (gx#stx-eq?
                                                   '%#let-values
                                                   _hd4553845916_)
                                                  (if (gx#stx-pair?
                                                       _tl4553945918_)
                                                      (let ((_e4556645827_
                                                             (gx#stx-e
                                                              _tl4553945918_)))
                                                        (let ((_tl4556845832_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4556645827_)))
                      (_hd4556745830_
                       (let () (declare (not safe)) (##car _e4556645827_))))
                  (if (gx#stx-pair? _tl4556845832_)
                      (let ((_e4556945835_ (gx#stx-e _tl4556845832_)))
                        (let ((_tl4557145840_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4556945835_)))
                              (_hd4557045838_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4556945835_))))
                          (if (gx#stx-null? _tl4557145840_)
                              (___kont5588355884_ _hd4557045838_)
                              (___kont5589155892_))))
                      (___kont5589155892_))))
              (___kont5589155892_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-eq?
                                                       '%#letrec-values
                                                       _hd4553845916_)
                                                      (if (gx#stx-pair?
                                                           _tl4553945918_)
                                                          (let ((_e4558045649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4553945918_)))
                    (let ((_tl4558245654_
                           (let () (declare (not safe)) (##cdr _e4558045649_)))
                          (_hd4558145652_
                           (let ()
                             (declare (not safe))
                             (##car _e4558045649_))))
                      (if (gx#stx-pair? _hd4558145652_)
                          (let ((_e4558345657_ (gx#stx-e _hd4558145652_)))
                            (let ((_tl4558545662_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4558345657_)))
                                  (_hd4558445660_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4558345657_))))
                              (if (gx#stx-pair? _hd4558445660_)
                                  (let ((_e4558645665_
                                         (gx#stx-e _hd4558445660_)))
                                    (let ((_tl4558845670_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4558645665_)))
                                          (_hd4558745668_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4558645665_))))
                                      (if (gx#stx-pair? _hd4558745668_)
                                          (let ((_e4558945673_
                                                 (gx#stx-e _hd4558745668_)))
                                            (let ((_tl4559145678_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4558945673_)))
                                                  (_hd4559045676_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4558945673_))))
                                              (if (gx#stx-null? _tl4559145678_)
                                                  (if (gx#stx-pair?
                                                       _tl4558845670_)
                                                      (let ((_e4559245681_
                                                             (gx#stx-e
                                                              _tl4558845670_)))
                                                        (let ((_tl4559445686_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4559245681_)))
                      (_hd4559345684_
                       (let () (declare (not safe)) (##car _e4559245681_))))
                  (if (gx#stx-pair? _hd4559345684_)
                      (let ((_e4559545689_ (gx#stx-e _hd4559345684_)))
                        (let ((_tl4559745694_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4559545689_)))
                              (_hd4559645692_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4559545689_))))
                          (if (gx#identifier? _hd4559645692_)
                              (if (gx#stx-eq? '%#lambda _hd4559645692_)
                                  (if (gx#stx-pair? _tl4559745694_)
                                      (let ((_e4559845697_
                                             (gx#stx-e _tl4559745694_)))
                                        (let ((_tl4560045702_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4559845697_)))
                                              (_hd4559945700_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4559845697_))))
                                          (if (gx#stx-pair/null?
                                               _hd4559945700_)
                                              (let ((___splice5588755888_
                                                     (gx#syntax-split-splice
                                                      _hd4559945700_
                                                      '0)))
                                                (let ((_tl4560345707_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice5588755888_
                                                          '1)))
                                                      (_target4560145705_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice5588755888_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl4560345707_)
                                                      (___match5604656047_
                                                       _e4553745913_
                                                       _hd4553845916_
                                                       _tl4553945918_
                                                       _e4558045649_
                                                       _hd4558145652_
                                                       _tl4558245654_
                                                       _e4558345657_
                                                       _hd4558445660_
                                                       _tl4558545662_
                                                       _e4558645665_
                                                       _hd4558745668_
                                                       _tl4558845670_
                                                       _e4558945673_
                                                       _hd4559045676_
                                                       _tl4559145678_
                                                       _e4559245681_
                                                       _hd4559345684_
                                                       _tl4559445686_
                                                       _e4559545689_
                                                       _hd4559645692_
                                                       _tl4559745694_
                                                       _e4559845697_
                                                       _hd4559945700_
                                                       _tl4560045702_
                                                       ___splice5588755888_
                                                       _target4560145705_
                                                       _tl4560345707_)
                                                      (___kont5589155892_))))
                                              (___kont5589155892_))))
                                      (___kont5589155892_))
                                  (___kont5589155892_))
                              (___kont5589155892_))))
                      (___kont5589155892_))))
              (___kont5589155892_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont5589155892_))))
                                          (___kont5589155892_))))
                                  (___kont5589155892_))))
                          (___kont5589155892_))))
                  (___kont5589155892_))
              (___kont5589155892_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___kont5589155892_))))
                              (___kont5589155892_))))))))
          (let* ((_block4537045383_ _block45366_)
                 (_E4537245387_
                  (lambda () (error '"No clause matching" _block4537045383_)))
                 (_K4537345500_
                  (lambda (_maybe-bind45390_ _assert45391_ _kont45392_)
                    (let* ((_g4539445420_
                            (lambda (_g4539545417_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4539545417_)))
                           (_g4539345497_
                            (lambda (_g4539545423_)
                              (if (gx#stx-pair? _g4539545423_)
                                  (let ((_e4539845425_
                                         (gx#stx-e _g4539545423_)))
                                    (let ((_hd4539945428_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4539845425_)))
                                          (_tl4540045430_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4539845425_))))
                                      (if (gx#identifier? _hd4539945428_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd4539945428_)
                                              (if (gx#stx-pair? _tl4540045430_)
                                                  (let ((_e4540145433_
                                                         (gx#stx-e
                                                          _tl4540045430_)))
                                                    (let ((_hd4540245436_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4540145433_)))
                                                          (_tl4540345438_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4540145433_))))
                                                      (if (gx#stx-pair/null?
                                                           _hd4540245436_)
                                                          (let ((_g56820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4540245436_ '0)))
                    (begin
                      (let ((_g56821_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g56820_)
                                   (##vector-length _g56820_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g56821_ 2)))
                            (error "Context expects 2 values" _g56821_)))
                      (let ((_target4540445441_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g56820_ 0)))
                            (_tl4540645443_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g56820_ 1))))
                        (if (gx#stx-null? _tl4540645443_)
                            (letrec ((_loop4540745446_
                                      (lambda (_hd4540545449_ _id4541145451_)
                                        (if (gx#stx-pair? _hd4540545449_)
                                            (let ((_e4540845454_
                                                   (gx#stx-e _hd4540545449_)))
                                              (let ((_lp-hd4540945457_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4540845454_)))
                                                    (_lp-tl4541045459_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4540845454_))))
                                                (_loop4540745446_
                                                 _lp-tl4541045459_
                                                 (cons _lp-hd4540945457_
                                                       _id4541145451_))))
                                            (let ((_id4541245462_
                                                   (reverse _id4541145451_)))
                                              (if (gx#stx-pair? _tl4540345438_)
                                                  (let ((_e4541345465_
                                                         (gx#stx-e
                                                          _tl4540345438_)))
                                                    (let ((_hd4541445468_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4541345465_)))
                                                          (_tl4541545470_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4541345465_))))
                                                      (if (gx#stx-null?
                                                           _tl4541545470_)
                                                          ((lambda (_L45473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L45474_)
                     (_assert-restart45369_ _L45473_ _assert45391_))
                   _hd4541445468_
                   _id4541245462_)
                  (_g4539445420_ _g4539545423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4539445420_
                                                   _g4539545423_)))))))
                              (_loop4540745446_ _target4540445441_ '()))
                            (_g4539445420_ _g4539545423_)))))
                  (_g4539445420_ _g4539545423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4539445420_
                                                   _g4539545423_))
                                              (_g4539445420_ _g4539545423_))
                                          (_g4539445420_ _g4539545423_))))
                                  (_g4539445420_ _g4539545423_)))))
                      (_g4539345497_ _kont45392_)))))
            (if (let () (declare (not safe)) (##pair? _block4537045383_))
                (let ((_tl4537545503_
                       (let ()
                         (declare (not safe))
                         (##cdr _block4537045383_))))
                  (if (let () (declare (not safe)) (##pair? _tl4537545503_))
                      (let ((_tl4537745506_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl4537545503_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl4537745506_))
                            (let ((_hd4537845509_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl4537745506_)))
                                  (_tl4537945511_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl4537745506_))))
                              (let ((_kont45514_ _hd4537845509_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl4537945511_))
                                    (let ((_hd4538045516_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl4537945511_)))
                                          (_tl4538145518_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl4537945511_))))
                                      (let* ((_assert45521_ _hd4538045516_)
                                             (_maybe-bind45523_
                                              _tl4538145518_))
                                        (_K4537345500_
                                         _maybe-bind45523_
                                         _assert45521_
                                         _kont45514_)))
                                    (_E4537245387_))))
                            (_E4537245387_)))
                      (_E4537245387_)))
                (_E4537245387_))))))
    (define gxc#optimize-syntax-case
      (lambda (_stx44997_)
        (let* ((_g4499945029_
                (lambda (_g4500045026_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g4500045026_)))
               (_g4499845363_
                (lambda (_g4500045032_)
                  (if (gx#stx-pair? _g4500045032_)
                      (let ((_e4500445034_ (gx#stx-e _g4500045032_)))
                        (let ((_hd4500545037_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4500445034_)))
                              (_tl4500645039_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4500445034_))))
                          (if (gx#identifier? _hd4500545037_)
                              (if (gx#stx-eq? '%#let-values _hd4500545037_)
                                  (if (gx#stx-pair? _tl4500645039_)
                                      (let ((_e4500745042_
                                             (gx#stx-e _tl4500645039_)))
                                        (let ((_hd4500845045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4500745042_)))
                                              (_tl4500945047_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4500745042_))))
                                          (if (gx#stx-pair? _hd4500845045_)
                                              (let ((_e4501045050_
                                                     (gx#stx-e
                                                      _hd4500845045_)))
                                                (let ((_hd4501145053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4501045050_)))
                                                      (_tl4501245055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4501045050_))))
                                                  (if (gx#stx-pair?
                                                       _hd4501145053_)
                                                      (let ((_e4501345058_
                                                             (gx#stx-e
                                                              _hd4501145053_)))
                                                        (let ((_hd4501445061_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e4501345058_)))
                      (_tl4501545063_
                       (let () (declare (not safe)) (##cdr _e4501345058_))))
                  (if (gx#stx-pair? _hd4501445061_)
                      (let ((_e4501645066_ (gx#stx-e _hd4501445061_)))
                        (let ((_hd4501745069_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4501645066_)))
                              (_tl4501845071_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4501645066_))))
                          (if (gx#stx-null? _tl4501845071_)
                              (if (gx#stx-pair? _tl4501545063_)
                                  (let ((_e4501945074_
                                         (gx#stx-e _tl4501545063_)))
                                    (let ((_hd4502045077_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4501945074_)))
                                          (_tl4502145079_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4501945074_))))
                                      (if (gx#stx-null? _tl4502145079_)
                                          (if (gx#stx-null? _tl4501245055_)
                                              (if (gx#stx-pair? _tl4500945047_)
                                                  (let ((_e4502245082_
                                                         (gx#stx-e
                                                          _tl4500945047_)))
                                                    (let ((_hd4502345085_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4502245082_)))
                                                          (_tl4502445087_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4502245082_))))
                                                      (if (gx#stx-null?
                                                           _tl4502445087_)
                                                          ((lambda (_L45090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L45091_
                            _L45092_)
                     (let _lp45116_ ((_body45118_ _L45090_)
                                     (_clauses45119_ '()))
                       (let* ((___stx5604956050_ _body45118_)
                              (_g4512245169_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  ___stx5604956050_))))
                         (let ((___kont5605156052_
                                (lambda (_L45335_ _L45336_ _L45337_)
                                  (_lp45116_
                                   _L45335_
                                   (cons (cons _L45337_
                                               (gxc#compile-e _L45336_))
                                         _clauses45119_))))
                               (___kont5605356054_
                                (lambda (_L45214_ _L45215_)
                                  (let ((_$e45236_ (length _clauses45119_)))
                                    (if (eq? '0 _$e45236_)
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons (cons (cons (cons _L45092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L45091_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gxc#compile-e
                                                            _body45118_)
                                                           '())))
                                         _stx44997_)
                                        (if (eq? '1 _$e45236_)
                                            (let* ((_clauses4523845247_
                                                    _clauses45119_)
                                                   (_E4524045251_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _clauses4523845247_)))
                                                   (_K4524145257_
                                                    (lambda (_clause-lambda45254_
                                                             _clause45255_)
                                                      (gxc#xform-wrap-source
                                                       (cons '%#let-values
                                                             (cons (cons (cons (cons _L45092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons _L45091_ '()))
                                 '())
                           (cons (cons '%#let-values
                                       (cons (cons (cons (cons _clause45255_
                                                               '())
                                                         (cons _clause-lambda45254_
                                                               '()))
                                                   '())
                                             (cons (gxc#compile-e _body45118_)
                                                   '())))
                                 '())))
               _stx44997_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _clauses4523845247_))
                                                  (let ((_hd4524245260_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _clauses4523845247_)))
                                                        (_tl4524345262_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _clauses4523845247_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd4524245260_))
                                                        (let ((_hd4524445265_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _hd4524245260_)))
                      (_tl4524545267_
                       (let () (declare (not safe)) (##cdr _hd4524245260_))))
                  (let* ((_clause45270_ _hd4524445265_)
                         (_clause-lambda45272_ _tl4524545267_))
                    (if (let () (declare (not safe)) (##null? _tl4524345262_))
                        (_K4524145257_ _clause-lambda45272_ _clause45270_)
                        (_E4524045251_))))
                (_E4524045251_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E4524045251_)))
                                            (gxc#optimize-syntax-case-body
                                             _stx44997_
                                             (gxc#compile-e _L45214_)
                                             (cons _L45092_ _L45091_)
                                             _clauses45119_)))))))
                           (if (gx#stx-pair? ___stx5604956050_)
                               (let ((_e4512745279_
                                      (gx#stx-e ___stx5604956050_)))
                                 (let ((_tl4512945284_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4512745279_)))
                                       (_hd4512845282_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4512745279_))))
                                   (if (gx#identifier? _hd4512845282_)
                                       (if (gx#stx-eq?
                                            '%#let-values
                                            _hd4512845282_)
                                           (if (gx#stx-pair? _tl4512945284_)
                                               (let ((_e4513045287_
                                                      (gx#stx-e
                                                       _tl4512945284_)))
                                                 (let ((_tl4513245292_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4513045287_)))
                                                       (_hd4513145290_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4513045287_))))
                                                   (if (gx#stx-pair?
                                                        _hd4513145290_)
                                                       (let ((_e4513345295_
                                                              (gx#stx-e
                                                               _hd4513145290_)))
                                                         (let ((_tl4513545300_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e4513345295_)))
                       (_hd4513445298_
                        (let () (declare (not safe)) (##car _e4513345295_))))
                   (if (gx#stx-pair? _hd4513445298_)
                       (let ((_e4513645303_ (gx#stx-e _hd4513445298_)))
                         (let ((_tl4513845308_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4513645303_)))
                               (_hd4513745306_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4513645303_))))
                           (if (gx#stx-pair? _hd4513745306_)
                               (let ((_e4513945311_ (gx#stx-e _hd4513745306_)))
                                 (let ((_tl4514145316_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4513945311_)))
                                       (_hd4514045314_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4513945311_))))
                                   (if (gx#stx-null? _tl4514145316_)
                                       (if (gx#stx-pair? _tl4513845308_)
                                           (let ((_e4514245319_
                                                  (gx#stx-e _tl4513845308_)))
                                             (let ((_tl4514445324_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4514245319_)))
                                                   (_hd4514345322_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4514245319_))))
                                               (if (gx#stx-null?
                                                    _tl4514445324_)
                                                   (if (gx#stx-null?
                                                        _tl4513545300_)
                                                       (if (gx#stx-pair?
                                                            _tl4513245292_)
                                                           (let ((_e4514545327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl4513245292_)))
                     (let ((_tl4514745332_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4514545327_)))
                           (_hd4514645330_
                            (let ()
                              (declare (not safe))
                              (##car _e4514545327_))))
                       (if (gx#stx-null? _tl4514745332_)
                           (___kont5605156052_
                            _hd4514645330_
                            _hd4514345322_
                            _hd4514045314_)
                           (_g4512245169_))))
                   (_g4512245169_))
               (_g4512245169_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4512245169_))))
                                           (_g4512245169_))
                                       (_g4512245169_))))
                               (_g4512245169_))))
                       (_g4512245169_))))
               (_g4512245169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4512245169_))
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd4512845282_)
                                               (if (gx#stx-pair?
                                                    _tl4512945284_)
                                                   (let ((_e4515345182_
                                                          (gx#stx-e
                                                           _tl4512945284_)))
                                                     (let ((_tl4515545187_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4515345182_)))
                                                           (_hd4515445185_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4515345182_))))
                                                       (if (gx#stx-pair?
                                                            _hd4515445185_)
                                                           (let ((_e4515645190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd4515445185_)))
                     (let ((_tl4515845195_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4515645190_)))
                           (_hd4515745193_
                            (let ()
                              (declare (not safe))
                              (##car _e4515645190_))))
                       (if (gx#identifier? _hd4515745193_)
                           (if (gx#stx-eq? '%#ref _hd4515745193_)
                               (if (gx#stx-pair? _tl4515845195_)
                                   (let ((_e4515945198_
                                          (gx#stx-e _tl4515845195_)))
                                     (let ((_tl4516145203_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4515945198_)))
                                           (_hd4516045201_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4515945198_))))
                                       (if (gx#stx-null? _tl4516145203_)
                                           (if (gx#stx-pair? _tl4515545187_)
                                               (let ((_e4516245206_
                                                      (gx#stx-e
                                                       _tl4515545187_)))
                                                 (let ((_tl4516445211_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4516245206_)))
                                                       (_hd4516345209_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4516245206_))))
                                                   (if (gx#stx-null?
                                                        _tl4516445211_)
                                                       (___kont5605356054_
                                                        _hd4516345209_
                                                        _hd4516045201_)
                                                       (_g4512245169_))))
                                               (_g4512245169_))
                                           (_g4512245169_))))
                                   (_g4512245169_))
                               (_g4512245169_))
                           (_g4512245169_))))
                   (_g4512245169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4512245169_))
                                               (_g4512245169_)))
                                       (_g4512245169_))))
                               (_g4512245169_))))))
                   _hd4502345085_
                   _hd4502045077_
                   _hd4501745069_)
                  (_g4499945029_ _g4500045032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4499945029_
                                                   _g4500045032_))
                                              (_g4499945029_ _g4500045032_))
                                          (_g4499945029_ _g4500045032_))))
                                  (_g4499945029_ _g4500045032_))
                              (_g4499945029_ _g4500045032_))))
                      (_g4499945029_ _g4500045032_))))
              (_g4499945029_ _g4500045032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4499945029_ _g4500045032_))))
                                      (_g4499945029_ _g4500045032_))
                                  (_g4499945029_ _g4500045032_))
                              (_g4499945029_ _g4500045032_))))
                      (_g4499945029_ _g4500045032_)))))
          (_g4499845363_ _stx44997_))))
    (define gxc#optimize-syntax-case-body
      (lambda (_stx44925_ _expr44926_ _negation44927_ _clauses44928_)
        (letrec ((_normalize44930_
                  (lambda (_clauses44957_)
                    (let* ((_clauses4495844967_ _clauses44957_)
                           (_E4496044971_
                            (lambda ()
                              (error '"No clause matching"
                                     _clauses4495844967_)))
                           (_K4496144978_
                            (lambda (_rest44974_ _kont44975_ _id44976_)
                              (cons (cons '#f _kont44975_) _rest44974_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _clauses4495844967_))
                          (let ((_hd4496244981_
                                 (let ()
                                   (declare (not safe))
                                   (##car _clauses4495844967_)))
                                (_tl4496344983_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _clauses4495844967_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd4496244981_))
                                (let ((_hd4496444986_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd4496244981_)))
                                      (_tl4496544988_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd4496244981_))))
                                  (let* ((_id44991_ _hd4496444986_)
                                         (_kont44993_ _tl4496544988_)
                                         (_rest44995_ _tl4496344983_))
                                    (_K4496144978_
                                     _rest44995_
                                     _kont44993_
                                     _id44991_)))
                                (_E4496044971_)))
                          (_E4496044971_))))))
          (call-with-parameters
           (lambda ()
             (let* ((_id44933_ (make-symbol (gensym '__stx)))
                    (_id44935_ (gx#core-quote-syntax__0 _id44933_))
                    (_g56822_ (gx#core-bind-runtime!__0 _id44935_))
                    (_g56823_
                     (gxc#optimize-syntax-case-clauses
                      _clauses44928_
                      (car _negation44927_))))
               (begin
                 (let ((_g56824_
                        (let ()
                          (declare (not safe))
                          (if (##values? _g56823_)
                              (##vector-length _g56823_)
                              1))))
                   (if (not (let () (declare (not safe)) (##fx= _g56824_ 2)))
                       (error "Context expects 2 values" _g56824_)))
                 (let ((_clauses44938_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _g56823_ 0)))
                       (_konts44939_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _g56823_ 1))))
                   (let* ((_clauses44948_
                           (map (lambda (_g4494044943_ _g4494144945_)
                                  (gxc#optimize-syntax-case-closure
                                   _g4494044943_
                                   _g4494144945_
                                   _id44935_))
                                _clauses44938_
                                (foldr1 cons
                                        (cons (car _negation44927_) '())
                                        (map car (cdr _clauses44938_)))))
                          (_clauses44950_ (_normalize44930_ _clauses44948_))
                          (_negation44952_
                           (gxc#optimize-syntax-case-closure
                            _negation44927_
                            '#f
                            _id44935_))
                          (_body44954_
                           (gxc#optimize-match-body
                            _stx44925_
                            _negation44952_
                            _clauses44950_
                            _konts44939_)))
                     (gxc#xform-wrap-source
                      (cons '%#let-values
                            (cons (cons (cons (cons _id44935_ '())
                                              (cons _expr44926_ '()))
                                        '())
                                  (cons _body44954_ '())))
                      _stx44925_))))))
           gx#current-expander-context
           (let ((__obj56795 (make-object gx#local-context::t '5)))
             (gx#local-context:::init!__0 __obj56795)
             __obj56795)))))
    (define gxc#optimize-syntax-case-clauses
      (lambda (_clauses43683_ _negation-id43684_)
        (letrec ((_xform-e43686_
                  (lambda (_expr44070_
                           _kont-id44071_
                           _kont-box44072_
                           _negation-id44073_)
                    (let* ((___stx5625156252_ _expr44070_)
                           (_g4407944212_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx5625156252_))))
                      (let ((___kont5625356254_
                             (lambda (_L44901_ _L44902_ _L44903_)
                               (let ((_K44920_
                                      (_xform-e43686_
                                       _L44902_
                                       _kont-id44071_
                                       _kont-box44072_
                                       _negation-id44073_)))
                                 (cons '%#if
                                       (cons _L44903_
                                             (cons _K44920_
                                                   (cons _L44901_ '())))))))
                            (___kont5625556256_
                             (lambda (_L44817_
                                      _L44818_
                                      _L44819_
                                      _L44820_
                                      _L44821_)
                               (let* ((_id44856_
                                       (make-symbol (gensym '__splice)))
                                      (_id44858_
                                       (gx#core-quote-syntax__0 _id44856_))
                                      (_g56825_
                                       (gx#core-bind-runtime!__0 _id44858_))
                                      (_body44861_
                                       (_xform-e43686_
                                        _L44817_
                                        _kont-id44071_
                                        _kont-box44072_
                                        _negation-id44073_)))
                                 (cons '%#let-values
                                       (cons (cons (cons (cons _id44858_ '())
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#call)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _L44819_ '()))
                                   _L44818_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (cons (cons '%#let-values
                                                         (cons (cons (cons (cons _L44821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons (cons '%#call
                                               (cons '(%#ref ##vector-ref)
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id44858_ '()))
                   (cons '(%#quote 0) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             (cons (cons (cons _L44820_ '())
                                         (cons (cons '%#call
                                                     (cons '(%#ref ##vector-ref)
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _id44858_ '()))
                         (cons '(%#quote 1) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))
                       (cons _body44861_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                            (___kont5625756258_
                             (lambda (_L44699_ _L44700_)
                               (let ((_body44714_
                                      (_xform-e43686_
                                       _L44699_
                                       _kont-id44071_
                                       _kont-box44072_
                                       _negation-id44073_)))
                                 (cons '%#let-values
                                       (cons _L44700_
                                             (cons _body44714_ '()))))))
                            (___kont5625956260_
                             (lambda (_L44643_ _L44644_ _L44645_)
                               (let ((_lambda-expr44668_
                                      (_xform-loop-e43687_
                                       _L44644_
                                       _kont-id44071_
                                       _kont-box44072_
                                       _negation-id44073_)))
                                 (cons '%#letrec-values
                                       (cons (cons (cons (cons _L44645_ '())
                                                         (cons _lambda-expr44668_
                                                               '()))
                                                   '())
                                             (cons _L44643_ '()))))))
                            (___kont5626156262_
                             (lambda (_L44305_ _L44306_ _L44307_)
                               (let* ((___stx5615356154_ _L44306_)
                                      (_g4433644379_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx5615356154_))))
                                 (let ((___kont5615556156_
                                        (lambda (_L44495_
                                                 _L44496_
                                                 _L44497_
                                                 _L44498_)
                                          (let ((_kont44539_
                                                 (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#lambda)
                                                       (cons (foldr1 (lambda (_g4453144534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g4453244536_)
                               (cons _g4453144534_ _g4453244536_))
                             '()
                             _L44307_)
                     (cons _L44497_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (set-box!
                                             _kont-box44072_
                                             _kont44539_)
                                            (let* ((_kont-args44550_
                                                    (map (lambda (_id44541_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id44541_ '())))
                 (foldr1 (lambda (_g4454244545_ _g4454344547_)
                           (cons _g4454244545_ _g4454344547_))
                         '()
                         _L44307_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_body44552_
                                                    (cons '%#if
                                                          (cons _L44498_
                                                                (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#ref
                                                (cons _kont-id44071_ '()))
                                          _kont-args44550_))
                              (cons (cons (gx#datum->syntax__0 '#f '%#call)
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L44496_ '()))
                                                (cons (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)
                                                            (cons _L44495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? (foldr1 (lambda (_g4455444557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g4455544559_)
                           (cons _g4455444557_ _g4455544559_))
                         '()
                         _L44307_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _body44552_
                                                  (cons '%#let-values
                                                        (cons (map (lambda (_id44562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _arg44563_)
                             (cons (cons _id44562_ '()) (cons _arg44563_ '())))
                           (foldr1 (lambda (_g4456444567_ _g4456544569_)
                                     (cons _g4456444567_ _g4456544569_))
                                   '()
                                   _L44307_)
                           (foldr1 (lambda (_g4457144574_ _g4457244576_)
                                     (cons _g4457144574_ _g4457244576_))
                                   '()
                                   _L44305_))
                      (cons _body44552_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont5615756158_
                                        (lambda ()
                                          (let ((_kont44393_
                                                 (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#lambda)
                                                       (cons (foldr1 (lambda (_g4438544388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g4438644390_)
                               (cons _g4438544388_ _g4438644390_))
                             '()
                             _L44307_)
                     (cons _L44306_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (set-box!
                                             _kont-box44072_
                                             _kont44393_)
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kont-id44071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (foldr1 (lambda (_g4439444397_ _g4439544399_)
                          (cons _g4439444397_ _g4439544399_))
                        '()
                        _L44305_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let ((___match5624856249_
                                          (lambda (_e4434244407_
                                                   _hd4434344410_
                                                   _tl4434444412_
                                                   _e4434544415_
                                                   _hd4434644418_
                                                   _tl4434744420_
                                                   _e4434844423_
                                                   _hd4434944426_
                                                   _tl4435044428_
                                                   _e4435144431_
                                                   _hd4435244434_
                                                   _tl4435344436_
                                                   _e4435444439_
                                                   _hd4435544442_
                                                   _tl4435644444_
                                                   _e4435744447_
                                                   _hd4435844450_
                                                   _tl4435944452_
                                                   _e4436044455_
                                                   _hd4436144458_
                                                   _tl4436244460_
                                                   _e4436344463_
                                                   _hd4436444466_
                                                   _tl4436544468_
                                                   _e4436644471_
                                                   _hd4436744474_
                                                   _tl4436844476_
                                                   _e4436944479_
                                                   _hd4437044482_
                                                   _tl4437144484_
                                                   _e4437244487_
                                                   _hd4437344490_
                                                   _tl4437444492_)
                                            (let ((_L44495_ _hd4437344490_)
                                                  (_L44496_ _hd4436444466_)
                                                  (_L44497_ _hd4434944426_)
                                                  (_L44498_ _hd4434644418_))
                                              (if (gx#free-identifier=?
                                                   _L44496_
                                                   _negation-id44073_)
                                                  (___kont5615556156_
                                                   _L44495_
                                                   _L44496_
                                                   _L44497_
                                                   _L44498_)
                                                  (___kont5615756158_))))))
                                     (if (gx#stx-pair? ___stx5615356154_)
                                         (let ((_e4434244407_
                                                (gx#stx-e ___stx5615356154_)))
                                           (let ((_tl4434444412_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4434244407_)))
                                                 (_hd4434344410_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4434244407_))))
                                             (if (gx#identifier?
                                                  _hd4434344410_)
                                                 (if (gx#stx-eq?
                                                      '%#if
                                                      _hd4434344410_)
                                                     (if (gx#stx-pair?
                                                          _tl4434444412_)
                                                         (let ((_e4434544415_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4434444412_)))
                   (let ((_tl4434744420_
                          (let () (declare (not safe)) (##cdr _e4434544415_)))
                         (_hd4434644418_
                          (let () (declare (not safe)) (##car _e4434544415_))))
                     (if (gx#stx-pair? _tl4434744420_)
                         (let ((_e4434844423_ (gx#stx-e _tl4434744420_)))
                           (let ((_tl4435044428_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4434844423_)))
                                 (_hd4434944426_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4434844423_))))
                             (if (gx#stx-pair? _tl4435044428_)
                                 (let ((_e4435144431_
                                        (gx#stx-e _tl4435044428_)))
                                   (let ((_tl4435344436_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4435144431_)))
                                         (_hd4435244434_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4435144431_))))
                                     (if (gx#stx-pair? _hd4435244434_)
                                         (let ((_e4435444439_
                                                (gx#stx-e _hd4435244434_)))
                                           (let ((_tl4435644444_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4435444439_)))
                                                 (_hd4435544442_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4435444439_))))
                                             (if (gx#identifier?
                                                  _hd4435544442_)
                                                 (if (gx#stx-eq?
                                                      '%#call
                                                      _hd4435544442_)
                                                     (if (gx#stx-pair?
                                                          _tl4435644444_)
                                                         (let ((_e4435744447_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4435644444_)))
                   (let ((_tl4435944452_
                          (let () (declare (not safe)) (##cdr _e4435744447_)))
                         (_hd4435844450_
                          (let () (declare (not safe)) (##car _e4435744447_))))
                     (if (gx#stx-pair? _hd4435844450_)
                         (let ((_e4436044455_ (gx#stx-e _hd4435844450_)))
                           (let ((_tl4436244460_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4436044455_)))
                                 (_hd4436144458_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4436044455_))))
                             (if (gx#identifier? _hd4436144458_)
                                 (if (gx#stx-eq? '%#ref _hd4436144458_)
                                     (if (gx#stx-pair? _tl4436244460_)
                                         (let ((_e4436344463_
                                                (gx#stx-e _tl4436244460_)))
                                           (let ((_tl4436544468_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4436344463_)))
                                                 (_hd4436444466_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4436344463_))))
                                             (if (gx#stx-null? _tl4436544468_)
                                                 (if (gx#stx-pair?
                                                      _tl4435944452_)
                                                     (let ((_e4436644471_
                                                            (gx#stx-e
                                                             _tl4435944452_)))
                                                       (let ((_tl4436844476_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4436644471_)))
                     (_hd4436744474_
                      (let () (declare (not safe)) (##car _e4436644471_))))
                 (if (gx#stx-pair? _hd4436744474_)
                     (let ((_e4436944479_ (gx#stx-e _hd4436744474_)))
                       (let ((_tl4437144484_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4436944479_)))
                             (_hd4437044482_
                              (let ()
                                (declare (not safe))
                                (##car _e4436944479_))))
                         (if (gx#identifier? _hd4437044482_)
                             (if (gx#stx-eq? '%#ref _hd4437044482_)
                                 (if (gx#stx-pair? _tl4437144484_)
                                     (let ((_e4437244487_
                                            (gx#stx-e _tl4437144484_)))
                                       (let ((_tl4437444492_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4437244487_)))
                                             (_hd4437344490_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4437244487_))))
                                         (if (gx#stx-null? _tl4437444492_)
                                             (if (gx#stx-null? _tl4436844476_)
                                                 (if (gx#stx-null?
                                                      _tl4435344436_)
                                                     (___match5624856249_
                                                      _e4434244407_
                                                      _hd4434344410_
                                                      _tl4434444412_
                                                      _e4434544415_
                                                      _hd4434644418_
                                                      _tl4434744420_
                                                      _e4434844423_
                                                      _hd4434944426_
                                                      _tl4435044428_
                                                      _e4435144431_
                                                      _hd4435244434_
                                                      _tl4435344436_
                                                      _e4435444439_
                                                      _hd4435544442_
                                                      _tl4435644444_
                                                      _e4435744447_
                                                      _hd4435844450_
                                                      _tl4435944452_
                                                      _e4436044455_
                                                      _hd4436144458_
                                                      _tl4436244460_
                                                      _e4436344463_
                                                      _hd4436444466_
                                                      _tl4436544468_
                                                      _e4436644471_
                                                      _hd4436744474_
                                                      _tl4436844476_
                                                      _e4436944479_
                                                      _hd4437044482_
                                                      _tl4437144484_
                                                      _e4437244487_
                                                      _hd4437344490_
                                                      _tl4437444492_)
                                                     (___kont5615756158_))
                                                 (___kont5615756158_))
                                             (___kont5615756158_))))
                                     (___kont5615756158_))
                                 (___kont5615756158_))
                             (___kont5615756158_))))
                     (___kont5615756158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5615756158_))
                                                 (___kont5615756158_))))
                                         (___kont5615756158_))
                                     (___kont5615756158_))
                                 (___kont5615756158_))))
                         (___kont5615756158_))))
                 (___kont5615756158_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5615756158_))
                                                 (___kont5615756158_))))
                                         (___kont5615756158_))))
                                 (___kont5615756158_))))
                         (___kont5615756158_))))
                 (___kont5615756158_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5615756158_))
                                                 (___kont5615756158_))))
                                         (___kont5615756158_))))))))
                        (let* ((___match5650856509_
                                (lambda (_e4417544217_
                                         _hd4417644220_
                                         _tl4417744222_
                                         _e4417844225_
                                         _hd4417944228_
                                         _tl4418044230_
                                         _e4418144233_
                                         _hd4418244236_
                                         _tl4418344238_
                                         _e4418444241_
                                         _hd4418544244_
                                         _tl4418644246_
                                         ___splice5626356264_
                                         _target4418744249_
                                         _tl4418944251_)
                                  (letrec ((_loop4419044254_
                                            (lambda (_hd4418844257_
                                                     _id4419444259_)
                                              (if (gx#stx-pair? _hd4418844257_)
                                                  (let ((_e4419144262_
                                                         (gx#stx-e
                                                          _hd4418844257_)))
                                                    (let ((_lp-tl4419344267_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4419144262_)))
                                                          (_lp-hd4419244265_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4419144262_))))
                                                      (_loop4419044254_
                                                       _lp-tl4419344267_
                                                       (cons _lp-hd4419244265_
                                                             _id4419444259_))))
                                                  (let ((_id4419544270_
                                                         (reverse _id4419444259_)))
                                                    (if (gx#stx-pair?
                                                         _tl4418644246_)
                                                        (let ((_e4419644273_
                                                               (gx#stx-e
                                                                _tl4418644246_)))
                                                          (let ((_tl4419844278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4419644273_)))
                        (_hd4419744276_
                         (let () (declare (not safe)) (##car _e4419644273_))))
                    (if (gx#stx-null? _tl4419844278_)
                        (if (gx#stx-pair/null? _tl4418044230_)
                            (let ((___splice5626556266_
                                   (gx#syntax-split-splice _tl4418044230_ '0)))
                              (let ((_tl4420144283_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5626556266_ '1)))
                                    (_target4419944281_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5626556266_
                                        '0))))
                                (if (gx#stx-null? _tl4420144283_)
                                    (letrec ((_loop4420244286_
                                              (lambda (_hd4420044289_
                                                       _arg4420644291_)
                                                (if (gx#stx-pair?
                                                     _hd4420044289_)
                                                    (let ((_e4420344294_
                                                           (gx#stx-e
                                                            _hd4420044289_)))
                                                      (let ((_lp-tl4420544299_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4420344294_)))
                    (_lp-hd4420444297_
                     (let () (declare (not safe)) (##car _e4420344294_))))
                (_loop4420244286_
                 _lp-tl4420544299_
                 (cons _lp-hd4420444297_ _arg4420644291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_arg4420744302_
                                                           (reverse _arg4420644291_)))
                                                      (___kont5626156262_
                                                       _arg4420744302_
                                                       _hd4419744276_
                                                       _id4419544270_))))))
                                      (_loop4420244286_
                                       _target4419944281_
                                       '()))
                                    (_g4407944212_))))
                            (_g4407944212_))
                        (_g4407944212_))))
                (_g4407944212_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop4419044254_
                                     _target4418744249_
                                     '()))))
                               (___match5639056391_
                                (lambda (_e4410144721_
                                         _hd4410244724_
                                         _tl4410344726_
                                         _e4410444729_
                                         _hd4410544732_
                                         _tl4410644734_
                                         _e4410744737_
                                         _hd4410844740_
                                         _tl4410944742_
                                         _e4411044745_
                                         _hd4411144748_
                                         _tl4411244750_
                                         _e4411344753_
                                         _hd4411444756_
                                         _tl4411544758_
                                         _e4411644761_
                                         _hd4411744764_
                                         _tl4411844766_
                                         _e4411944769_
                                         _hd4412044772_
                                         _tl4412144774_
                                         _e4412244777_
                                         _hd4412344780_
                                         _tl4412444782_
                                         _e4412544785_
                                         _hd4412644788_
                                         _tl4412744790_
                                         _e4412844793_
                                         _hd4412944796_
                                         _tl4413044798_
                                         _e4413144801_
                                         _hd4413244804_
                                         _tl4413344806_
                                         _e4413444809_
                                         _hd4413544812_
                                         _tl4413644814_)
                                  (let ((_L44817_ _hd4413544812_)
                                        (_L44818_ _tl4412744790_)
                                        (_L44819_ _hd4413244804_)
                                        (_L44820_ _hd4411744764_)
                                        (_L44821_ _hd4411444756_))
                                    (if (gxc#runtime-identifier=?
                                         _L44819_
                                         'gx#syntax-split-splice)
                                        (___kont5625556256_
                                         _L44817_
                                         _L44818_
                                         _L44819_
                                         _L44820_
                                         _L44821_)
                                        (___kont5625756258_
                                         _hd4413544812_
                                         _hd4410544732_))))))
                          (if (gx#stx-pair? ___stx5625156252_)
                              (let ((_e4408444869_
                                     (gx#stx-e ___stx5625156252_)))
                                (let ((_tl4408644874_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4408444869_)))
                                      (_hd4408544872_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4408444869_))))
                                  (if (gx#identifier? _hd4408544872_)
                                      (if (gx#stx-eq? '%#if _hd4408544872_)
                                          (if (gx#stx-pair? _tl4408644874_)
                                              (let ((_e4408744877_
                                                     (gx#stx-e
                                                      _tl4408644874_)))
                                                (let ((_tl4408944882_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4408744877_)))
                                                      (_hd4408844880_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4408744877_))))
                                                  (if (gx#stx-pair?
                                                       _tl4408944882_)
                                                      (let ((_e4409044885_
                                                             (gx#stx-e
                                                              _tl4408944882_)))
                                                        (let ((_tl4409244890_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4409044885_)))
                      (_hd4409144888_
                       (let () (declare (not safe)) (##car _e4409044885_))))
                  (if (gx#stx-pair? _tl4409244890_)
                      (let ((_e4409344893_ (gx#stx-e _tl4409244890_)))
                        (let ((_tl4409544898_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4409344893_)))
                              (_hd4409444896_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4409344893_))))
                          (if (gx#stx-null? _tl4409544898_)
                              (___kont5625356254_
                               _hd4409444896_
                               _hd4409144888_
                               _hd4408844880_)
                              (_g4407944212_))))
                      (_g4407944212_))))
              (_g4407944212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4407944212_))
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd4408544872_)
                                              (if (gx#stx-pair? _tl4408644874_)
                                                  (let ((_e4410444729_
                                                         (gx#stx-e
                                                          _tl4408644874_)))
                                                    (let ((_tl4410644734_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4410444729_)))
                                                          (_hd4410544732_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4410444729_))))
                                                      (if (gx#stx-pair?
                                                           _hd4410544732_)
                                                          (let ((_e4410744737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd4410544732_)))
                    (let ((_tl4410944742_
                           (let () (declare (not safe)) (##cdr _e4410744737_)))
                          (_hd4410844740_
                           (let ()
                             (declare (not safe))
                             (##car _e4410744737_))))
                      (if (gx#stx-pair? _hd4410844740_)
                          (let ((_e4411044745_ (gx#stx-e _hd4410844740_)))
                            (let ((_tl4411244750_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4411044745_)))
                                  (_hd4411144748_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4411044745_))))
                              (if (gx#stx-pair? _hd4411144748_)
                                  (let ((_e4411344753_
                                         (gx#stx-e _hd4411144748_)))
                                    (let ((_tl4411544758_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4411344753_)))
                                          (_hd4411444756_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4411344753_))))
                                      (if (gx#stx-pair? _tl4411544758_)
                                          (let ((_e4411644761_
                                                 (gx#stx-e _tl4411544758_)))
                                            (let ((_tl4411844766_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4411644761_)))
                                                  (_hd4411744764_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4411644761_))))
                                              (if (gx#stx-null? _tl4411844766_)
                                                  (if (gx#stx-pair?
                                                       _tl4411244750_)
                                                      (let ((_e4411944769_
                                                             (gx#stx-e
                                                              _tl4411244750_)))
                                                        (let ((_tl4412144774_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4411944769_)))
                      (_hd4412044772_
                       (let () (declare (not safe)) (##car _e4411944769_))))
                  (if (gx#stx-pair? _hd4412044772_)
                      (let ((_e4412244777_ (gx#stx-e _hd4412044772_)))
                        (let ((_tl4412444782_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4412244777_)))
                              (_hd4412344780_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4412244777_))))
                          (if (gx#identifier? _hd4412344780_)
                              (if (gx#stx-eq? '%#call _hd4412344780_)
                                  (if (gx#stx-pair? _tl4412444782_)
                                      (let ((_e4412544785_
                                             (gx#stx-e _tl4412444782_)))
                                        (let ((_tl4412744790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4412544785_)))
                                              (_hd4412644788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4412544785_))))
                                          (if (gx#stx-pair? _hd4412644788_)
                                              (let ((_e4412844793_
                                                     (gx#stx-e
                                                      _hd4412644788_)))
                                                (let ((_tl4413044798_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4412844793_)))
                                                      (_hd4412944796_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4412844793_))))
                                                  (if (gx#identifier?
                                                       _hd4412944796_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd4412944796_)
                                                          (if (gx#stx-pair?
                                                               _tl4413044798_)
                                                              (let ((_e4413144801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl4413044798_)))
                        (let ((_tl4413344806_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4413144801_)))
                              (_hd4413244804_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4413144801_))))
                          (if (gx#stx-null? _tl4413344806_)
                              (if (gx#stx-null? _tl4412144774_)
                                  (if (gx#stx-null? _tl4410944742_)
                                      (if (gx#stx-pair? _tl4410644734_)
                                          (let ((_e4413444809_
                                                 (gx#stx-e _tl4410644734_)))
                                            (let ((_tl4413644814_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4413444809_)))
                                                  (_hd4413544812_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4413444809_))))
                                              (if (gx#stx-null? _tl4413644814_)
                                                  (___match5639056391_
                                                   _e4408444869_
                                                   _hd4408544872_
                                                   _tl4408644874_
                                                   _e4410444729_
                                                   _hd4410544732_
                                                   _tl4410644734_
                                                   _e4410744737_
                                                   _hd4410844740_
                                                   _tl4410944742_
                                                   _e4411044745_
                                                   _hd4411144748_
                                                   _tl4411244750_
                                                   _e4411344753_
                                                   _hd4411444756_
                                                   _tl4411544758_
                                                   _e4411644761_
                                                   _hd4411744764_
                                                   _tl4411844766_
                                                   _e4411944769_
                                                   _hd4412044772_
                                                   _tl4412144774_
                                                   _e4412244777_
                                                   _hd4412344780_
                                                   _tl4412444782_
                                                   _e4412544785_
                                                   _hd4412644788_
                                                   _tl4412744790_
                                                   _e4412844793_
                                                   _hd4412944796_
                                                   _tl4413044798_
                                                   _e4413144801_
                                                   _hd4413244804_
                                                   _tl4413344806_
                                                   _e4413444809_
                                                   _hd4413544812_
                                                   _tl4413644814_)
                                                  (_g4407944212_))))
                                          (_g4407944212_))
                                      (if (gx#stx-pair? _tl4410644734_)
                                          (let ((_e4414544691_
                                                 (gx#stx-e _tl4410644734_)))
                                            (let ((_tl4414744696_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4414544691_)))
                                                  (_hd4414644694_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4414544691_))))
                                              (if (gx#stx-null? _tl4414744696_)
                                                  (___kont5625756258_
                                                   _hd4414644694_
                                                   _hd4410544732_)
                                                  (_g4407944212_))))
                                          (_g4407944212_)))
                                  (if (gx#stx-pair? _tl4410644734_)
                                      (let ((_e4414544691_
                                             (gx#stx-e _tl4410644734_)))
                                        (let ((_tl4414744696_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4414544691_)))
                                              (_hd4414644694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4414544691_))))
                                          (if (gx#stx-null? _tl4414744696_)
                                              (___kont5625756258_
                                               _hd4414644694_
                                               _hd4410544732_)
                                              (_g4407944212_))))
                                      (_g4407944212_)))
                              (if (gx#stx-pair? _tl4410644734_)
                                  (let ((_e4414544691_
                                         (gx#stx-e _tl4410644734_)))
                                    (let ((_tl4414744696_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4414544691_)))
                                          (_hd4414644694_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4414544691_))))
                                      (if (gx#stx-null? _tl4414744696_)
                                          (___kont5625756258_
                                           _hd4414644694_
                                           _hd4410544732_)
                                          (_g4407944212_))))
                                  (_g4407944212_)))))
                      (if (gx#stx-pair? _tl4410644734_)
                          (let ((_e4414544691_ (gx#stx-e _tl4410644734_)))
                            (let ((_tl4414744696_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4414544691_)))
                                  (_hd4414644694_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4414544691_))))
                              (if (gx#stx-null? _tl4414744696_)
                                  (___kont5625756258_
                                   _hd4414644694_
                                   _hd4410544732_)
                                  (_g4407944212_))))
                          (_g4407944212_)))
                  (if (gx#stx-pair? _tl4410644734_)
                      (let ((_e4414544691_ (gx#stx-e _tl4410644734_)))
                        (let ((_tl4414744696_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4414544691_)))
                              (_hd4414644694_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4414544691_))))
                          (if (gx#stx-null? _tl4414744696_)
                              (___kont5625756258_
                               _hd4414644694_
                               _hd4410544732_)
                              (_g4407944212_))))
                      (_g4407944212_)))
              (if (gx#stx-pair? _tl4410644734_)
                  (let ((_e4414544691_ (gx#stx-e _tl4410644734_)))
                    (let ((_tl4414744696_
                           (let () (declare (not safe)) (##cdr _e4414544691_)))
                          (_hd4414644694_
                           (let ()
                             (declare (not safe))
                             (##car _e4414544691_))))
                      (if (gx#stx-null? _tl4414744696_)
                          (___kont5625756258_ _hd4414644694_ _hd4410544732_)
                          (_g4407944212_))))
                  (_g4407944212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl4410644734_)
                                                  (let ((_e4414544691_
                                                         (gx#stx-e
                                                          _tl4410644734_)))
                                                    (let ((_tl4414744696_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4414544691_)))
                                                          (_hd4414644694_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4414544691_))))
                                                      (if (gx#stx-null?
                                                           _tl4414744696_)
                                                          (___kont5625756258_
                                                           _hd4414644694_
                                                           _hd4410544732_)
                                                          (_g4407944212_))))
                                                  (_g4407944212_)))))
                                      (if (gx#stx-pair? _tl4410644734_)
                                          (let ((_e4414544691_
                                                 (gx#stx-e _tl4410644734_)))
                                            (let ((_tl4414744696_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4414544691_)))
                                                  (_hd4414644694_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4414544691_))))
                                              (if (gx#stx-null? _tl4414744696_)
                                                  (___kont5625756258_
                                                   _hd4414644694_
                                                   _hd4410544732_)
                                                  (_g4407944212_))))
                                          (_g4407944212_)))
                                  (if (gx#stx-pair? _tl4410644734_)
                                      (let ((_e4414544691_
                                             (gx#stx-e _tl4410644734_)))
                                        (let ((_tl4414744696_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4414544691_)))
                                              (_hd4414644694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4414544691_))))
                                          (if (gx#stx-null? _tl4414744696_)
                                              (___kont5625756258_
                                               _hd4414644694_
                                               _hd4410544732_)
                                              (_g4407944212_))))
                                      (_g4407944212_)))
                              (if (gx#stx-pair? _tl4410644734_)
                                  (let ((_e4414544691_
                                         (gx#stx-e _tl4410644734_)))
                                    (let ((_tl4414744696_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4414544691_)))
                                          (_hd4414644694_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4414544691_))))
                                      (if (gx#stx-null? _tl4414744696_)
                                          (___kont5625756258_
                                           _hd4414644694_
                                           _hd4410544732_)
                                          (_g4407944212_))))
                                  (_g4407944212_)))))
                      (if (gx#stx-pair? _tl4410644734_)
                          (let ((_e4414544691_ (gx#stx-e _tl4410644734_)))
                            (let ((_tl4414744696_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4414544691_)))
                                  (_hd4414644694_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4414544691_))))
                              (if (gx#stx-null? _tl4414744696_)
                                  (___kont5625756258_
                                   _hd4414644694_
                                   _hd4410544732_)
                                  (_g4407944212_))))
                          (_g4407944212_)))))
              (if (gx#stx-pair? _tl4410644734_)
                  (let ((_e4414544691_ (gx#stx-e _tl4410644734_)))
                    (let ((_tl4414744696_
                           (let () (declare (not safe)) (##cdr _e4414544691_)))
                          (_hd4414644694_
                           (let ()
                             (declare (not safe))
                             (##car _e4414544691_))))
                      (if (gx#stx-null? _tl4414744696_)
                          (___kont5625756258_ _hd4414644694_ _hd4410544732_)
                          (_g4407944212_))))
                  (_g4407944212_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl4410644734_)
                                                      (let ((_e4414544691_
                                                             (gx#stx-e
                                                              _tl4410644734_)))
                                                        (let ((_tl4414744696_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4414544691_)))
                      (_hd4414644694_
                       (let () (declare (not safe)) (##car _e4414544691_))))
                  (if (gx#stx-null? _tl4414744696_)
                      (___kont5625756258_ _hd4414644694_ _hd4410544732_)
                      (_g4407944212_))))
              (_g4407944212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl4410644734_)
                                              (let ((_e4414544691_
                                                     (gx#stx-e
                                                      _tl4410644734_)))
                                                (let ((_tl4414744696_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4414544691_)))
                                                      (_hd4414644694_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4414544691_))))
                                                  (if (gx#stx-null?
                                                       _tl4414744696_)
                                                      (___kont5625756258_
                                                       _hd4414644694_
                                                       _hd4410544732_)
                                                      (_g4407944212_))))
                                              (_g4407944212_)))))
                                  (if (gx#stx-pair? _tl4410644734_)
                                      (let ((_e4414544691_
                                             (gx#stx-e _tl4410644734_)))
                                        (let ((_tl4414744696_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4414544691_)))
                                              (_hd4414644694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4414544691_))))
                                          (if (gx#stx-null? _tl4414744696_)
                                              (___kont5625756258_
                                               _hd4414644694_
                                               _hd4410544732_)
                                              (_g4407944212_))))
                                      (_g4407944212_)))))
                          (if (gx#stx-pair? _tl4410644734_)
                              (let ((_e4414544691_ (gx#stx-e _tl4410644734_)))
                                (let ((_tl4414744696_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4414544691_)))
                                      (_hd4414644694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4414544691_))))
                                  (if (gx#stx-null? _tl4414744696_)
                                      (___kont5625756258_
                                       _hd4414644694_
                                       _hd4410544732_)
                                      (_g4407944212_))))
                              (_g4407944212_)))))
                  (if (gx#stx-pair? _tl4410644734_)
                      (let ((_e4414544691_ (gx#stx-e _tl4410644734_)))
                        (let ((_tl4414744696_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4414544691_)))
                              (_hd4414644694_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4414544691_))))
                          (if (gx#stx-null? _tl4414744696_)
                              (___kont5625756258_
                               _hd4414644694_
                               _hd4410544732_)
                              (_g4407944212_))))
                      (_g4407944212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4407944212_))
                                              (if (gx#stx-eq?
                                                   '%#letrec-values
                                                   _hd4408544872_)
                                                  (if (gx#stx-pair?
                                                       _tl4408644874_)
                                                      (let ((_e4415444595_
                                                             (gx#stx-e
                                                              _tl4408644874_)))
                                                        (let ((_tl4415644600_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4415444595_)))
                      (_hd4415544598_
                       (let () (declare (not safe)) (##car _e4415444595_))))
                  (if (gx#stx-pair? _hd4415544598_)
                      (let ((_e4415744603_ (gx#stx-e _hd4415544598_)))
                        (let ((_tl4415944608_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4415744603_)))
                              (_hd4415844606_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4415744603_))))
                          (if (gx#stx-pair? _hd4415844606_)
                              (let ((_e4416044611_ (gx#stx-e _hd4415844606_)))
                                (let ((_tl4416244616_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4416044611_)))
                                      (_hd4416144614_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4416044611_))))
                                  (if (gx#stx-pair? _hd4416144614_)
                                      (let ((_e4416344619_
                                             (gx#stx-e _hd4416144614_)))
                                        (let ((_tl4416544624_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4416344619_)))
                                              (_hd4416444622_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4416344619_))))
                                          (if (gx#stx-null? _tl4416544624_)
                                              (if (gx#stx-pair? _tl4416244616_)
                                                  (let ((_e4416644627_
                                                         (gx#stx-e
                                                          _tl4416244616_)))
                                                    (let ((_tl4416844632_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4416644627_)))
                                                          (_hd4416744630_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4416644627_))))
                                                      (if (gx#stx-null?
                                                           _tl4416844632_)
                                                          (if (gx#stx-null?
                                                               _tl4415944608_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4415644600_)
                          (let ((_e4416944635_ (gx#stx-e _tl4415644600_)))
                            (let ((_tl4417144640_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4416944635_)))
                                  (_hd4417044638_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4416944635_))))
                              (if (gx#stx-null? _tl4417144640_)
                                  (___kont5625956260_
                                   _hd4417044638_
                                   _hd4416744630_
                                   _hd4416444622_)
                                  (_g4407944212_))))
                          (_g4407944212_))
                      (_g4407944212_))
                  (_g4407944212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4407944212_))
                                              (_g4407944212_))))
                                      (_g4407944212_))))
                              (_g4407944212_))))
                      (_g4407944212_))))
              (_g4407944212_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-eq?
                                                       '%#call
                                                       _hd4408544872_)
                                                      (if (gx#stx-pair?
                                                           _tl4408644874_)
                                                          (let ((_e4417844225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4408644874_)))
                    (let ((_tl4418044230_
                           (let () (declare (not safe)) (##cdr _e4417844225_)))
                          (_hd4417944228_
                           (let ()
                             (declare (not safe))
                             (##car _e4417844225_))))
                      (if (gx#stx-pair? _hd4417944228_)
                          (let ((_e4418144233_ (gx#stx-e _hd4417944228_)))
                            (let ((_tl4418344238_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4418144233_)))
                                  (_hd4418244236_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4418144233_))))
                              (if (gx#identifier? _hd4418244236_)
                                  (if (gx#stx-eq? '%#lambda _hd4418244236_)
                                      (if (gx#stx-pair? _tl4418344238_)
                                          (let ((_e4418444241_
                                                 (gx#stx-e _tl4418344238_)))
                                            (let ((_tl4418644246_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4418444241_)))
                                                  (_hd4418544244_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4418444241_))))
                                              (if (gx#stx-pair/null?
                                                   _hd4418544244_)
                                                  (let ((___splice5626356264_
                                                         (gx#syntax-split-splice
                                                          _hd4418544244_
                                                          '0)))
                                                    (let ((_tl4418944251_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice5626356264_
                                                              '1)))
                                                          (_target4418744249_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice5626356264_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4418944251_)
                                                          (___match5650856509_
                                                           _e4408444869_
                                                           _hd4408544872_
                                                           _tl4408644874_
                                                           _e4417844225_
                                                           _hd4417944228_
                                                           _tl4418044230_
                                                           _e4418144233_
                                                           _hd4418244236_
                                                           _tl4418344238_
                                                           _e4418444241_
                                                           _hd4418544244_
                                                           _tl4418644246_
                                                           ___splice5626356264_
                                                           _target4418744249_
                                                           _tl4418944251_)
                                                          (_g4407944212_))))
                                                  (_g4407944212_))))
                                          (_g4407944212_))
                                      (_g4407944212_))
                                  (_g4407944212_))))
                          (_g4407944212_))))
                  (_g4407944212_))
              (_g4407944212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g4407944212_))))
                              (_g4407944212_)))))))
                 (_xform-loop-e43687_
                  (lambda (_expr43896_
                           _kont-id43897_
                           _kont-box43898_
                           _negation-id43899_)
                    (let* ((_g4390143941_
                            (lambda (_g4390243938_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4390243938_)))
                           (_g4390044067_
                            (lambda (_g4390243944_)
                              (if (gx#stx-pair? _g4390243944_)
                                  (let ((_e4390743946_
                                         (gx#stx-e _g4390243944_)))
                                    (let ((_hd4390843949_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4390743946_)))
                                          (_tl4390943951_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4390743946_))))
                                      (if (gx#identifier? _hd4390843949_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd4390843949_)
                                              (if (gx#stx-pair? _tl4390943951_)
                                                  (let ((_e4391043954_
                                                         (gx#stx-e
                                                          _tl4390943951_)))
                                                    (let ((_hd4391143957_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4391043954_)))
                                                          (_tl4391243959_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4391043954_))))
                                                      (if (gx#stx-pair/null?
                                                           _hd4391143957_)
                                                          (let ((_g56826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4391143957_ '0)))
                    (begin
                      (let ((_g56827_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g56826_)
                                   (##vector-length _g56826_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g56827_ 2)))
                            (error "Context expects 2 values" _g56827_)))
                      (let ((_target4391343962_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g56826_ 0)))
                            (_tl4391543964_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g56826_ 1))))
                        (if (gx#stx-null? _tl4391543964_)
                            (letrec ((_loop4391643967_
                                      (lambda (_hd4391443970_ _id4392043972_)
                                        (if (gx#stx-pair? _hd4391443970_)
                                            (let ((_e4391743975_
                                                   (gx#stx-e _hd4391443970_)))
                                              (let ((_lp-hd4391843978_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4391743975_)))
                                                    (_lp-tl4391943980_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4391743975_))))
                                                (_loop4391643967_
                                                 _lp-tl4391943980_
                                                 (cons _lp-hd4391843978_
                                                       _id4392043972_))))
                                            (let ((_id4392143983_
                                                   (reverse _id4392043972_)))
                                              (if (gx#stx-pair? _tl4391243959_)
                                                  (let ((_e4392243986_
                                                         (gx#stx-e
                                                          _tl4391243959_)))
                                                    (let ((_hd4392343989_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4392243986_)))
                                                          (_tl4392443991_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4392243986_))))
                                                      (if (gx#stx-pair?
                                                           _hd4392343989_)
                                                          (let ((_e4392543994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd4392343989_)))
                    (let ((_hd4392643997_
                           (let () (declare (not safe)) (##car _e4392543994_)))
                          (_tl4392743999_
                           (let ()
                             (declare (not safe))
                             (##cdr _e4392543994_))))
                      (if (gx#identifier? _hd4392643997_)
                          (if (gx#stx-eq? '%#if _hd4392643997_)
                              (if (gx#stx-pair? _tl4392743999_)
                                  (let ((_e4392844002_
                                         (gx#stx-e _tl4392743999_)))
                                    (let ((_hd4392944005_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4392844002_)))
                                          (_tl4393044007_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4392844002_))))
                                      (if (gx#stx-pair? _tl4393044007_)
                                          (let ((_e4393144010_
                                                 (gx#stx-e _tl4393044007_)))
                                            (let ((_hd4393244013_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4393144010_)))
                                                  (_tl4393344015_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4393144010_))))
                                              (if (gx#stx-pair? _tl4393344015_)
                                                  (let ((_e4393444018_
                                                         (gx#stx-e
                                                          _tl4393344015_)))
                                                    (let ((_hd4393544021_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4393444018_)))
                                                          (_tl4393644023_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4393444018_))))
                                                      (if (gx#stx-null?
                                                           _tl4393644023_)
                                                          (if (gx#stx-null?
                                                               _tl4392443991_)
                                                              ((lambda (_L44026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L44027_
                                _L44028_
                                _L44029_)
                         (let ((_E44058_
                                (_xform-e43686_
                                 _L44026_
                                 _kont-id43897_
                                 _kont-box43898_
                                 _negation-id43899_)))
                           (cons '%#lambda
                                 (cons (foldr1 (lambda (_g4405944062_
                                                        _g4406044064_)
                                                 (cons _g4405944062_
                                                       _g4406044064_))
                                               '()
                                               _L44029_)
                                       (cons (cons '%#if
                                                   (cons _L44028_
                                                         (cons _L44027_
                                                               (cons _E44058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _hd4393544021_
                       _hd4393244013_
                       _hd4392944005_
                       _id4392143983_)
                      (_g4390143941_ _g4390243944_))
                  (_g4390143941_ _g4390243944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4390143941_
                                                   _g4390243944_))))
                                          (_g4390143941_ _g4390243944_))))
                                  (_g4390143941_ _g4390243944_))
                              (_g4390143941_ _g4390243944_))
                          (_g4390143941_ _g4390243944_))))
                  (_g4390143941_ _g4390243944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4390143941_
                                                   _g4390243944_)))))))
                              (_loop4391643967_ _target4391343962_ '()))
                            (_g4390143941_ _g4390243944_)))))
                  (_g4390143941_ _g4390243944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4390143941_
                                                   _g4390243944_))
                                              (_g4390143941_ _g4390243944_))
                                          (_g4390143941_ _g4390243944_))))
                                  (_g4390143941_ _g4390243944_)))))
                      (_g4390044067_ _expr43896_))))
                 (_clause-e43688_
                  (lambda (_clause-lambda43766_ _kont-id43767_ _rest43768_)
                    (letrec* ((_kont-box43770_ (box '#f)))
                      (let* ((_negation-id43810_
                              (let* ((_rest4377143781_ _rest43768_)
                                     (_else4377343789_
                                      (lambda () _negation-id43684_))
                                     (_K4377543795_
                                      (lambda (_clause43792_ _clause-id43793_)
                                        _clause-id43793_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _rest4377143781_))
                                    (let ((_hd4377643798_
                                           (let ()
                                             (declare (not safe))
                                             (##car _rest4377143781_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd4377643798_))
                                          (let ((_hd4377843801_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd4377643798_)))
                                                (_tl4377943803_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd4377643798_))))
                                            (let* ((_clause-id43806_
                                                    _hd4377843801_)
                                                   (_clause43808_
                                                    _tl4377943803_))
                                              (_K4377543795_
                                               _clause43808_
                                               _clause-id43806_)))
                                          (_else4377343789_)))
                                    (_else4377343789_))))
                             (_g4381243832_
                              (lambda (_g4381343829_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g4381343829_)))
                             (_g4381143893_
                              (lambda (_g4381343835_)
                                (if (gx#stx-pair? _g4381343835_)
                                    (let ((_e4381643837_
                                           (gx#stx-e _g4381343835_)))
                                      (let ((_hd4381743840_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4381643837_)))
                                            (_tl4381843842_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4381643837_))))
                                        (if (gx#identifier? _hd4381743840_)
                                            (if (gx#stx-eq?
                                                 '%#lambda
                                                 _hd4381743840_)
                                                (if (gx#stx-pair?
                                                     _tl4381843842_)
                                                    (let ((_e4381943845_
                                                           (gx#stx-e
                                                            _tl4381843842_)))
                                                      (let ((_hd4382043848_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e4381943845_)))
                    (_tl4382143850_
                     (let () (declare (not safe)) (##cdr _e4381943845_))))
                (if (gx#stx-pair? _hd4382043848_)
                    (let ((_e4382243853_ (gx#stx-e _hd4382043848_)))
                      (let ((_hd4382343856_
                             (let ()
                               (declare (not safe))
                               (##car _e4382243853_)))
                            (_tl4382443858_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4382243853_))))
                        (if (gx#stx-null? _tl4382443858_)
                            (if (gx#stx-pair? _tl4382143850_)
                                (let ((_e4382543861_
                                       (gx#stx-e _tl4382143850_)))
                                  (let ((_hd4382643864_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4382543861_)))
                                        (_tl4382743866_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4382543861_))))
                                    (if (gx#stx-null? _tl4382743866_)
                                        ((lambda (_L43869_ _L43870_)
                                           (let ((_body43891_
                                                  (_xform-e43686_
                                                   _L43869_
                                                   _kont-id43767_
                                                   _kont-box43770_
                                                   _negation-id43810_)))
                                             (values (cons '%#lambda
                                                           (cons (cons _L43870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _body43891_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox _kont-box43770_))))
                                         _hd4382643864_
                                         _hd4382343856_)
                                        (_g4381243832_ _g4381343835_))))
                                (_g4381243832_ _g4381343835_))
                            (_g4381243832_ _g4381343835_))))
                    (_g4381243832_ _g4381343835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4381243832_
                                                     _g4381343835_))
                                                (_g4381243832_ _g4381343835_))
                                            (_g4381243832_ _g4381343835_))))
                                    (_g4381243832_ _g4381343835_)))))
                        (_g4381143893_ _clause-lambda43766_))))))
          (let _lp43690_ ((_rest43692_ _clauses43683_)
                          (_clauses43693_ '())
                          (_konts43694_ '()))
            (let* ((_rest4369543703_ _rest43692_)
                   (_else4369743711_
                    (lambda ()
                      (values (reverse _clauses43693_)
                              (reverse _konts43694_))))
                   (_K4369943754_
                    (lambda (_rest43714_ _clause43715_)
                      (let* ((_clause4371643723_ _clause43715_)
                             (_E4371843727_
                              (lambda ()
                                (error '"No clause matching"
                                       _clause4371643723_)))
                             (_K4371943742_
                              (lambda (_clause-lambda43730_ _clause-id43731_)
                                (let* ((_id43733_
                                        (make-symbol (gensym '__kont)))
                                       (_id43735_
                                        (gx#core-quote-syntax__0 _id43733_))
                                       (_g56828_
                                        (gx#core-bind-runtime!__0 _id43735_))
                                       (_g56829_
                                        (_clause-e43688_
                                         _clause-lambda43730_
                                         _id43735_
                                         _rest43714_)))
                                  (begin
                                    (let ((_g56830_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g56829_)
                                                 (##vector-length _g56829_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g56830_ 2)))
                                          (error "Context expects 2 values"
                                                 _g56830_)))
                                    (let ((_clause-lambda43738_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g56829_ 0)))
                                          (_kont43739_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g56829_ 1))))
                                      (let ()
                                        (_lp43690_
                                         _rest43714_
                                         (cons (cons _clause-id43731_
                                                     _clause-lambda43738_)
                                               _clauses43693_)
                                         (cons (cons _id43735_ _kont43739_)
                                               _konts43694_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _clause4371643723_))
                            (let ((_hd4372043745_
                                   (let ()
                                     (declare (not safe))
                                     (##car _clause4371643723_)))
                                  (_tl4372143747_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _clause4371643723_))))
                              (let* ((_clause-id43750_ _hd4372043745_)
                                     (_clause-lambda43752_ _tl4372143747_))
                                (_K4371943742_
                                 _clause-lambda43752_
                                 _clause-id43750_)))
                            (_E4371843727_))))))
              (if (let () (declare (not safe)) (##pair? _rest4369543703_))
                  (let ((_hd4370043757_
                         (let ()
                           (declare (not safe))
                           (##car _rest4369543703_)))
                        (_tl4370143759_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest4369543703_))))
                    (let* ((_clause43762_ _hd4370043757_)
                           (_rest43764_ _tl4370143759_))
                      (_K4369943754_ _rest43764_ _clause43762_)))
                  (_else4369743711_)))))))
    (define gxc#optimize-syntax-case-closure
      (lambda (_clause43027_ _negation43028_ _target43029_)
        (letrec ((_closure-e43031_
                  (lambda (_expr43148_)
                    (let* ((___stx5651156512_ _expr43148_)
                           (_g4315543270_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx5651156512_))))
                      (let ((___kont5651356514_
                             (lambda (_L43661_ _L43662_ _L43663_)
                               (cons '%#if
                                     (cons _L43663_
                                           (cons (_closure-e43031_ _L43662_)
                                                 (cons (_closure-e43031_
                                                        _L43661_)
                                                       '()))))))
                            (___kont5651556516_
                             (lambda (_L43609_ _L43610_)
                               (cons '%#let-values
                                     (cons _L43610_
                                           (cons (_closure-e43031_ _L43609_)
                                                 '())))))
                            (___kont5651756518_
                             (lambda (_L43555_ _L43556_ _L43557_)
                               (cons '%#letrec-values
                                     (cons (cons (cons (cons _L43557_ '())
                                                       (cons (_closure-e43031_
                                                              _L43556_)
                                                             '()))
                                                 '())
                                           (cons _L43555_ '())))))
                            (___kont5651956520_
                             (lambda (_L43468_ _L43469_)
                               (cons '%#lambda
                                     (cons (foldr1 (lambda (_g4348643489_
                                                            _g4348743491_)
                                                     (cons _g4348643489_
                                                           _g4348743491_))
                                                   '()
                                                   _L43469_)
                                           (cons (_closure-e43031_ _L43468_)
                                                 '())))))
                            (___kont5652356524_
                             (lambda (_L43398_)
                               (cons '%#call
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L43398_ '()))
                                           '()))))
                            (___kont5652556526_
                             (lambda (_L43331_ _L43332_) _expr43148_)))
                        (let* ((___match5674456745_
                                (lambda (_e4324543275_
                                         _hd4324643278_
                                         _tl4324743280_
                                         _e4324843283_
                                         _hd4324943286_
                                         _tl4325043288_
                                         _e4325143291_
                                         _hd4325243294_
                                         _tl4325343296_
                                         _e4325443299_
                                         _hd4325543302_
                                         _tl4325643304_
                                         ___splice5652756528_
                                         _target4325743307_
                                         _tl4325943309_)
                                  (letrec ((_loop4326043312_
                                            (lambda (_hd4325843315_
                                                     _arg4326443317_)
                                              (if (gx#stx-pair? _hd4325843315_)
                                                  (let ((_e4326143320_
                                                         (gx#stx-e
                                                          _hd4325843315_)))
                                                    (let ((_lp-tl4326343325_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4326143320_)))
                                                          (_lp-hd4326243323_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4326143320_))))
                                                      (_loop4326043312_
                                                       _lp-tl4326343325_
                                                       (cons _lp-hd4326243323_
                                                             _arg4326443317_))))
                                                  (let ((_arg4326543328_
                                                         (reverse _arg4326443317_)))
                                                    (___kont5652556526_
                                                     _arg4326543328_
                                                     _hd4325543302_))))))
                                    (_loop4326043312_
                                     _target4325743307_
                                     '()))))
                               (___match5670256703_
                                (lambda (_e4322843358_
                                         _hd4322943361_
                                         _tl4323043363_
                                         _e4323143366_
                                         _hd4323243369_
                                         _tl4323343371_
                                         _e4323443374_
                                         _hd4323543377_
                                         _tl4323643379_
                                         _e4323743382_
                                         _hd4323843385_
                                         _tl4323943387_
                                         _e4324043390_
                                         _hd4324143393_
                                         _tl4324243395_)
                                  (let ((_L43398_ _hd4323843385_))
                                    (if (gx#free-identifier=?
                                         _L43398_
                                         _negation43028_)
                                        (___kont5652356524_ _L43398_)
                                        (if (gx#stx-pair/null? _tl4323343371_)
                                            (let ((___splice5652756528_
                                                   (gx#syntax-split-splice
                                                    _tl4323343371_
                                                    '0)))
                                              (let ((_tl4325943309_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5652756528_
                                                        '1)))
                                                    (_target4325743307_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5652756528_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4325943309_)
                                                    (___match5674456745_
                                                     _e4322843358_
                                                     _hd4322943361_
                                                     _tl4323043363_
                                                     _e4323143366_
                                                     _hd4323243369_
                                                     _tl4323343371_
                                                     _e4323443374_
                                                     _hd4323543377_
                                                     _tl4323643379_
                                                     _e4323743382_
                                                     _hd4323843385_
                                                     _tl4323943387_
                                                     ___splice5652756528_
                                                     _target4325743307_
                                                     _tl4325943309_)
                                                    (_g4315543270_))))
                                            (_g4315543270_))))))
                               (___match5666056661_
                                (lambda (_e4320943420_
                                         _hd4321043423_
                                         _tl4321143425_
                                         _e4321243428_
                                         _hd4321343431_
                                         _tl4321443433_
                                         ___splice5652156522_
                                         _target4321543436_
                                         _tl4321743438_)
                                  (letrec ((_loop4321843441_
                                            (lambda (_hd4321643444_
                                                     _id4322243446_)
                                              (if (gx#stx-pair? _hd4321643444_)
                                                  (let ((_e4321943449_
                                                         (gx#stx-e
                                                          _hd4321643444_)))
                                                    (let ((_lp-tl4322143454_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4321943449_)))
                                                          (_lp-hd4322043452_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4321943449_))))
                                                      (_loop4321843441_
                                                       _lp-tl4322143454_
                                                       (cons _lp-hd4322043452_
                                                             _id4322243446_))))
                                                  (let ((_id4322343457_
                                                         (reverse _id4322243446_)))
                                                    (if (gx#stx-pair?
                                                         _tl4321443433_)
                                                        (let ((_e4322443460_
                                                               (gx#stx-e
                                                                _tl4321443433_)))
                                                          (let ((_tl4322643465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4322443460_)))
                        (_hd4322543463_
                         (let () (declare (not safe)) (##car _e4322443460_))))
                    (if (gx#stx-null? _tl4322643465_)
                        (___kont5651956520_ _hd4322543463_ _id4322343457_)
                        (_g4315543270_))))
                (_g4315543270_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop4321843441_
                                     _target4321543436_
                                     '())))))
                          (if (gx#stx-pair? ___stx5651156512_)
                              (let ((_e4316043629_
                                     (gx#stx-e ___stx5651156512_)))
                                (let ((_tl4316243634_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4316043629_)))
                                      (_hd4316143632_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4316043629_))))
                                  (if (gx#identifier? _hd4316143632_)
                                      (if (gx#stx-eq? '%#if _hd4316143632_)
                                          (if (gx#stx-pair? _tl4316243634_)
                                              (let ((_e4316343637_
                                                     (gx#stx-e
                                                      _tl4316243634_)))
                                                (let ((_tl4316543642_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4316343637_)))
                                                      (_hd4316443640_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4316343637_))))
                                                  (if (gx#stx-pair?
                                                       _tl4316543642_)
                                                      (let ((_e4316643645_
                                                             (gx#stx-e
                                                              _tl4316543642_)))
                                                        (let ((_tl4316843650_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4316643645_)))
                      (_hd4316743648_
                       (let () (declare (not safe)) (##car _e4316643645_))))
                  (if (gx#stx-pair? _tl4316843650_)
                      (let ((_e4316943653_ (gx#stx-e _tl4316843650_)))
                        (let ((_tl4317143658_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4316943653_)))
                              (_hd4317043656_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4316943653_))))
                          (if (gx#stx-null? _tl4317143658_)
                              (___kont5651356514_
                               _hd4317043656_
                               _hd4316743648_
                               _hd4316443640_)
                              (_g4315543270_))))
                      (_g4315543270_))))
              (_g4315543270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4315543270_))
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd4316143632_)
                                              (if (gx#stx-pair? _tl4316243634_)
                                                  (let ((_e4317743593_
                                                         (gx#stx-e
                                                          _tl4316243634_)))
                                                    (let ((_tl4317943598_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4317743593_)))
                                                          (_hd4317843596_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4317743593_))))
                                                      (if (gx#stx-pair?
                                                           _tl4317943598_)
                                                          (let ((_e4318043601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4317943598_)))
                    (let ((_tl4318243606_
                           (let () (declare (not safe)) (##cdr _e4318043601_)))
                          (_hd4318143604_
                           (let ()
                             (declare (not safe))
                             (##car _e4318043601_))))
                      (if (gx#stx-null? _tl4318243606_)
                          (___kont5651556516_ _hd4318143604_ _hd4317843596_)
                          (_g4315543270_))))
                  (_g4315543270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4315543270_))
                                              (if (gx#stx-eq?
                                                   '%#letrec-values
                                                   _hd4316143632_)
                                                  (if (gx#stx-pair?
                                                       _tl4316243634_)
                                                      (let ((_e4318943507_
                                                             (gx#stx-e
                                                              _tl4316243634_)))
                                                        (let ((_tl4319143512_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4318943507_)))
                      (_hd4319043510_
                       (let () (declare (not safe)) (##car _e4318943507_))))
                  (if (gx#stx-pair? _hd4319043510_)
                      (let ((_e4319243515_ (gx#stx-e _hd4319043510_)))
                        (let ((_tl4319443520_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4319243515_)))
                              (_hd4319343518_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4319243515_))))
                          (if (gx#stx-pair? _hd4319343518_)
                              (let ((_e4319543523_ (gx#stx-e _hd4319343518_)))
                                (let ((_tl4319743528_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4319543523_)))
                                      (_hd4319643526_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4319543523_))))
                                  (if (gx#stx-pair? _hd4319643526_)
                                      (let ((_e4319843531_
                                             (gx#stx-e _hd4319643526_)))
                                        (let ((_tl4320043536_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4319843531_)))
                                              (_hd4319943534_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4319843531_))))
                                          (if (gx#stx-null? _tl4320043536_)
                                              (if (gx#stx-pair? _tl4319743528_)
                                                  (let ((_e4320143539_
                                                         (gx#stx-e
                                                          _tl4319743528_)))
                                                    (let ((_tl4320343544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4320143539_)))
                                                          (_hd4320243542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4320143539_))))
                                                      (if (gx#stx-null?
                                                           _tl4320343544_)
                                                          (if (gx#stx-null?
                                                               _tl4319443520_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4319143512_)
                          (let ((_e4320443547_ (gx#stx-e _tl4319143512_)))
                            (let ((_tl4320643552_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4320443547_)))
                                  (_hd4320543550_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4320443547_))))
                              (if (gx#stx-null? _tl4320643552_)
                                  (___kont5651756518_
                                   _hd4320543550_
                                   _hd4320243542_
                                   _hd4319943534_)
                                  (_g4315543270_))))
                          (_g4315543270_))
                      (_g4315543270_))
                  (_g4315543270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4315543270_))
                                              (_g4315543270_))))
                                      (_g4315543270_))))
                              (_g4315543270_))))
                      (_g4315543270_))))
              (_g4315543270_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-eq?
                                                       '%#lambda
                                                       _hd4316143632_)
                                                      (if (gx#stx-pair?
                                                           _tl4316243634_)
                                                          (let ((_e4321243428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4316243634_)))
                    (let ((_tl4321443433_
                           (let () (declare (not safe)) (##cdr _e4321243428_)))
                          (_hd4321343431_
                           (let ()
                             (declare (not safe))
                             (##car _e4321243428_))))
                      (if (gx#stx-pair/null? _hd4321343431_)
                          (let ((___splice5652156522_
                                 (gx#syntax-split-splice _hd4321343431_ '0)))
                            (let ((_tl4321743438_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice5652156522_ '1)))
                                  (_target4321543436_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice5652156522_ '0))))
                              (if (gx#stx-null? _tl4321743438_)
                                  (___match5666056661_
                                   _e4316043629_
                                   _hd4316143632_
                                   _tl4316243634_
                                   _e4321243428_
                                   _hd4321343431_
                                   _tl4321443433_
                                   ___splice5652156522_
                                   _target4321543436_
                                   _tl4321743438_)
                                  (_g4315543270_))))
                          (_g4315543270_))))
                  (_g4315543270_))
              (if (gx#stx-eq? '%#call _hd4316143632_)
                  (if (gx#stx-pair? _tl4316243634_)
                      (let ((_e4323143366_ (gx#stx-e _tl4316243634_)))
                        (let ((_tl4323343371_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4323143366_)))
                              (_hd4323243369_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4323143366_))))
                          (if (gx#stx-pair? _hd4323243369_)
                              (let ((_e4323443374_ (gx#stx-e _hd4323243369_)))
                                (let ((_tl4323643379_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4323443374_)))
                                      (_hd4323543377_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4323443374_))))
                                  (if (gx#identifier? _hd4323543377_)
                                      (if (gx#stx-eq? '%#ref _hd4323543377_)
                                          (if (gx#stx-pair? _tl4323643379_)
                                              (let ((_e4323743382_
                                                     (gx#stx-e
                                                      _tl4323643379_)))
                                                (let ((_tl4323943387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4323743382_)))
                                                      (_hd4323843385_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4323743382_))))
                                                  (if (gx#stx-null?
                                                       _tl4323943387_)
                                                      (if (gx#stx-pair?
                                                           _tl4323343371_)
                                                          (let ((_e4324043390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4323343371_)))
                    (let ((_tl4324243395_
                           (let () (declare (not safe)) (##cdr _e4324043390_)))
                          (_hd4324143393_
                           (let ()
                             (declare (not safe))
                             (##car _e4324043390_))))
                      (if (gx#stx-null? _tl4324243395_)
                          (___match5670256703_
                           _e4316043629_
                           _hd4316143632_
                           _tl4316243634_
                           _e4323143366_
                           _hd4323243369_
                           _tl4323343371_
                           _e4323443374_
                           _hd4323543377_
                           _tl4323643379_
                           _e4323743382_
                           _hd4323843385_
                           _tl4323943387_
                           _e4324043390_
                           _hd4324143393_
                           _tl4324243395_)
                          (if (gx#stx-pair/null? _tl4323343371_)
                              (let ((___splice5652756528_
                                     (gx#syntax-split-splice
                                      _tl4323343371_
                                      '0)))
                                (let ((_tl4325943309_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice5652756528_
                                          '1)))
                                      (_target4325743307_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice5652756528_
                                          '0))))
                                  (if (gx#stx-null? _tl4325943309_)
                                      (___match5674456745_
                                       _e4316043629_
                                       _hd4316143632_
                                       _tl4316243634_
                                       _e4323143366_
                                       _hd4323243369_
                                       _tl4323343371_
                                       _e4323443374_
                                       _hd4323543377_
                                       _tl4323643379_
                                       _e4323743382_
                                       _hd4323843385_
                                       _tl4323943387_
                                       ___splice5652756528_
                                       _target4325743307_
                                       _tl4325943309_)
                                      (_g4315543270_))))
                              (_g4315543270_)))))
                  (if (gx#stx-pair/null? _tl4323343371_)
                      (let ((___splice5652756528_
                             (gx#syntax-split-splice _tl4323343371_ '0)))
                        (let ((_tl4325943309_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice5652756528_ '1)))
                              (_target4325743307_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice5652756528_ '0))))
                          (if (gx#stx-null? _tl4325943309_)
                              (___match5674456745_
                               _e4316043629_
                               _hd4316143632_
                               _tl4316243634_
                               _e4323143366_
                               _hd4323243369_
                               _tl4323343371_
                               _e4323443374_
                               _hd4323543377_
                               _tl4323643379_
                               _e4323743382_
                               _hd4323843385_
                               _tl4323943387_
                               ___splice5652756528_
                               _target4325743307_
                               _tl4325943309_)
                              (_g4315543270_))))
                      (_g4315543270_)))
              (_g4315543270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4315543270_))
                                          (_g4315543270_))
                                      (_g4315543270_))))
                              (_g4315543270_))))
                      (_g4315543270_))
                  (_g4315543270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g4315543270_))))
                              (_g4315543270_))))))))
          (let* ((_clause4303243039_ _clause43027_)
                 (_E4303443043_
                  (lambda () (error '"No clause matching" _clause4303243039_)))
                 (_K4303543136_
                  (lambda (_kont43046_ _id43047_)
                    (let* ((_g4304943069_
                            (lambda (_g4305043066_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4305043066_)))
                           (_g4304843133_
                            (lambda (_g4305043072_)
                              (if (gx#stx-pair? _g4305043072_)
                                  (let ((_e4305343074_
                                         (gx#stx-e _g4305043072_)))
                                    (let ((_hd4305443077_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4305343074_)))
                                          (_tl4305543079_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4305343074_))))
                                      (if (gx#identifier? _hd4305443077_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd4305443077_)
                                              (if (gx#stx-pair? _tl4305543079_)
                                                  (let ((_e4305643082_
                                                         (gx#stx-e
                                                          _tl4305543079_)))
                                                    (let ((_hd4305743085_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4305643082_)))
                                                          (_tl4305843087_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4305643082_))))
                                                      (if (gx#stx-pair?
                                                           _hd4305743085_)
                                                          (let ((_e4305943090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd4305743085_)))
                    (let ((_hd4306043093_
                           (let () (declare (not safe)) (##car _e4305943090_)))
                          (_tl4306143095_
                           (let ()
                             (declare (not safe))
                             (##cdr _e4305943090_))))
                      (if (gx#stx-null? _tl4306143095_)
                          (if (gx#stx-pair? _tl4305843087_)
                              (let ((_e4306243098_ (gx#stx-e _tl4305843087_)))
                                (let ((_hd4306343101_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4306243098_)))
                                      (_tl4306443103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4306243098_))))
                                  (if (gx#stx-null? _tl4306443103_)
                                      ((lambda (_L43106_ _L43107_)
                                         (let* ((_body43128_
                                                 (gxc#apply-expression-subst
                                                  _L43106_
                                                  _L43107_
                                                  _target43029_))
                                                (_body43130_
                                                 (if _negation43028_
                                                     (_closure-e43031_
                                                      _body43128_)
                                                     _body43128_)))
                                           (gxc#optimizer-declare-type!__%
                                            (gxc#identifier-symbol _id43047_)
                                            (let ((__obj56796
                                                   (make-object
                                                    gxc#!lambda::t
                                                    '5)))
                                              (gxc#!lambda:::init!__0
                                               __obj56796
                                               'lambda
                                               '0
                                               '#f)
                                              __obj56796)
                                            '#t)
                                           (cons _id43047_
                                                 (cons '%#lambda
                                                       (cons '()
                                                             (cons _body43130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd4306343101_
                                       _hd4306043093_)
                                      (_g4304943069_ _g4305043072_))))
                              (_g4304943069_ _g4305043072_))
                          (_g4304943069_ _g4305043072_))))
                  (_g4304943069_ _g4305043072_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4304943069_
                                                   _g4305043072_))
                                              (_g4304943069_ _g4305043072_))
                                          (_g4304943069_ _g4305043072_))))
                                  (_g4304943069_ _g4305043072_)))))
                      (_g4304843133_ _kont43046_)))))
            (if (let () (declare (not safe)) (##pair? _clause4303243039_))
                (let ((_hd4303643139_
                       (let ()
                         (declare (not safe))
                         (##car _clause4303243039_)))
                      (_tl4303743141_
                       (let ()
                         (declare (not safe))
                         (##cdr _clause4303243039_))))
                  (let* ((_id43144_ _hd4303643139_)
                         (_kont43146_ _tl4303743141_))
                    (_K4303543136_ _kont43146_ _id43144_)))
                (_E4303443043_))))))
    (define gxc#push-match-vars-let-values%
      (lambda (_stx42813_ _vars42814_ _K42815_)
        (let* ((_g4281742834_
                (lambda (_g4281842831_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g4281842831_)))
               (_g4281643024_
                (lambda (_g4281842837_)
                  (if (gx#stx-pair? _g4281842837_)
                      (let ((_e4282142839_ (gx#stx-e _g4281842837_)))
                        (let ((_hd4282242842_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4282142839_)))
                              (_tl4282342844_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4282142839_))))
                          (if (gx#stx-pair? _tl4282342844_)
                              (let ((_e4282442847_ (gx#stx-e _tl4282342844_)))
                                (let ((_hd4282542850_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4282442847_)))
                                      (_tl4282642852_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4282442847_))))
                                  (if (gx#stx-pair? _tl4282642852_)
                                      (let ((_e4282742855_
                                             (gx#stx-e _tl4282642852_)))
                                        (let ((_hd4282842858_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4282742855_)))
                                              (_tl4282942860_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4282742855_))))
                                          (if (gx#stx-null? _tl4282942860_)
                                              ((lambda (_L42863_ _L42864_)
                                                 (let _lp42879_ ((_rest42881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L42864_)
                         (_rebind42882_ '())
                         (_vars42883_ _vars42814_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_rest4288442892_
                                                           _rest42881_)
                                                          (_else4288642900_
                                                           (lambda ()
                                                             (if (null? _rebind42882_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e _L42863_ _vars42883_ _K42815_)
                         (gxc#xform-wrap-source
                          (cons '%#let-values
                                (cons (reverse _rebind42882_)
                                      (cons (gxc#compile-e
                                             _L42863_
                                             _vars42883_
                                             _K42815_)
                                            '())))
                          _stx42813_))))
                  (_K4288843012_
                   (lambda (_rest42903_ _bind42904_)
                     (let* ((___stx5674756748_ _bind42904_)
                            (_g4290742930_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx5674756748_))))
                       (let ((___kont5674956750_
                              (lambda (_L42982_ _L42983_)
                                (_lp42879_
                                 _rest42903_
                                 _rebind42882_
                                 (cons _bind42904_ _vars42883_))))
                             (___kont5675156752_
                              (lambda ()
                                (_lp42879_
                                 _rest42903_
                                 (cons _bind42904_ _rebind42882_)
                                 _vars42883_))))
                         (if (gx#stx-pair? ___stx5674756748_)
                             (let ((_e4291142942_
                                    (gx#stx-e ___stx5674756748_)))
                               (let ((_tl4291342947_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4291142942_)))
                                     (_hd4291242945_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4291142942_))))
                                 (if (gx#stx-pair? _hd4291242945_)
                                     (let ((_e4291442950_
                                            (gx#stx-e _hd4291242945_)))
                                       (let ((_tl4291642955_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4291442950_)))
                                             (_hd4291542953_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4291442950_))))
                                         (if (gx#stx-null? _tl4291642955_)
                                             (if (gx#stx-pair? _tl4291342947_)
                                                 (let ((_e4291742958_
                                                        (gx#stx-e
                                                         _tl4291342947_)))
                                                   (let ((_tl4291942963_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4291742958_)))
                                                         (_hd4291842961_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4291742958_))))
                                                     (if (gx#stx-pair?
                                                          _hd4291842961_)
                                                         (let ((_e4292042966_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4291842961_)))
                   (let ((_tl4292242971_
                          (let () (declare (not safe)) (##cdr _e4292042966_)))
                         (_hd4292142969_
                          (let () (declare (not safe)) (##car _e4292042966_))))
                     (if (gx#identifier? _hd4292142969_)
                         (if (gx#stx-eq? '%#ref _hd4292142969_)
                             (if (gx#stx-pair? _tl4292242971_)
                                 (let ((_e4292342974_
                                        (gx#stx-e _tl4292242971_)))
                                   (let ((_tl4292542979_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4292342974_)))
                                         (_hd4292442977_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4292342974_))))
                                     (if (gx#stx-null? _tl4292542979_)
                                         (if (gx#stx-null? _tl4291942963_)
                                             (___kont5674956750_
                                              _hd4292442977_
                                              _hd4291542953_)
                                             (___kont5675156752_))
                                         (___kont5675156752_))))
                                 (___kont5675156752_))
                             (___kont5675156752_))
                         (___kont5675156752_))))
                 (___kont5675156752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont5675156752_))
                                             (___kont5675156752_))))
                                     (___kont5675156752_))))
                             (___kont5675156752_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##pair? _rest4288442892_))
                                                         (let ((_hd4288943015_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _rest4288442892_)))
                       (_tl4289043017_
                        (let ()
                          (declare (not safe))
                          (##cdr _rest4288442892_))))
                   (let* ((_bind43020_ _hd4288943015_)
                          (_rest43022_ _tl4289043017_))
                     (_K4288843012_ _rest43022_ _bind43020_)))
                 (_else4288642900_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd4282842858_
                                               _hd4282542850_)
                                              (_g4281742834_ _g4281842837_))))
                                      (_g4281742834_ _g4281842837_))))
                              (_g4281742834_ _g4281842837_))))
                      (_g4281742834_ _g4281842837_)))))
          (_g4281643024_ _stx42813_))))
    (define gxc#push-match-vars-if%
      (lambda (_stx42728_ _vars42729_ _K42730_)
        (let* ((_g4273242753_
                (lambda (_g4273342750_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g4273342750_)))
               (_g4273142810_
                (lambda (_g4273342756_)
                  (if (gx#stx-pair? _g4273342756_)
                      (let ((_e4273742758_ (gx#stx-e _g4273342756_)))
                        (let ((_hd4273842761_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4273742758_)))
                              (_tl4273942763_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4273742758_))))
                          (if (gx#stx-pair? _tl4273942763_)
                              (let ((_e4274042766_ (gx#stx-e _tl4273942763_)))
                                (let ((_hd4274142769_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4274042766_)))
                                      (_tl4274242771_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4274042766_))))
                                  (if (gx#stx-pair? _tl4274242771_)
                                      (let ((_e4274342774_
                                             (gx#stx-e _tl4274242771_)))
                                        (let ((_hd4274442777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4274342774_)))
                                              (_tl4274542779_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4274342774_))))
                                          (if (gx#stx-pair? _tl4274542779_)
                                              (let ((_e4274642782_
                                                     (gx#stx-e
                                                      _tl4274542779_)))
                                                (let ((_hd4274742785_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4274642782_)))
                                                      (_tl4274842787_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4274642782_))))
                                                  (if (gx#stx-null?
                                                       _tl4274842787_)
                                                      ((lambda (_L42790_
                                                                _L42791_
                                                                _L42792_)
                                                         (if (gxc#apply-find-var-refs
                                                              _L42792_
                                                              (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _vars42729_))
                     (gxc#push-match-vars-stop _stx42728_ _vars42729_ _K42730_)
                     (gxc#xform-wrap-source
                      (cons '%#if
                            (cons _L42792_
                                  (cons (gxc#compile-e
                                         _L42791_
                                         _vars42729_
                                         _K42730_)
                                        (cons (gxc#compile-e
                                               _L42790_
                                               _vars42729_
                                               _K42730_)
                                              '()))))
                      _stx42728_)))
               _hd4274742785_
               _hd4274442777_
               _hd4274142769_)
              (_g4273242753_ _g4273342756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4273242753_ _g4273342756_))))
                                      (_g4273242753_ _g4273342756_))))
                              (_g4273242753_ _g4273342756_))))
                      (_g4273242753_ _g4273342756_)))))
          (_g4273142810_ _stx42728_))))
    (define gxc#push-match-vars-call%
      (lambda (_stx42648_ _vars42649_ _K42650_)
        (let* ((_g4265242671_
                (lambda (_g4265342668_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g4265342668_)))
               (_g4265142725_
                (lambda (_g4265342674_)
                  (if (gx#stx-pair? _g4265342674_)
                      (let ((_e4265542676_ (gx#stx-e _g4265342674_)))
                        (let ((_hd4265642679_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4265542676_)))
                              (_tl4265742681_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4265542676_))))
                          (if (gx#stx-pair? _tl4265742681_)
                              (let ((_e4265842684_ (gx#stx-e _tl4265742681_)))
                                (let ((_hd4265942687_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4265842684_)))
                                      (_tl4266042689_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4265842684_))))
                                  (if (gx#stx-pair? _hd4265942687_)
                                      (let ((_e4266142692_
                                             (gx#stx-e _hd4265942687_)))
                                        (let ((_hd4266242695_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4266142692_)))
                                              (_tl4266342697_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4266142692_))))
                                          (if (gx#identifier? _hd4266242695_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd4266242695_)
                                                  (if (gx#stx-pair?
                                                       _tl4266342697_)
                                                      (let ((_e4266442700_
                                                             (gx#stx-e
                                                              _tl4266342697_)))
                                                        (let ((_hd4266542703_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e4266442700_)))
                      (_tl4266642705_
                       (let () (declare (not safe)) (##cdr _e4266442700_))))
                  (if (gx#stx-null? _tl4266642705_)
                      ((lambda (_L42708_)
                         (if (and (gx#free-identifier=? _L42708_ _K42650_)
                                  (pair? _vars42649_))
                             (gxc#xform-wrap-source
                              (cons '%#let-values
                                    (cons (reverse _vars42649_)
                                          (cons _stx42648_ '())))
                              _stx42648_)
                             _stx42648_))
                       _hd4266542703_)
                      (_g4265242671_ _g4265342674_))))
              (_g4265242671_ _g4265342674_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4265242671_
                                                   _g4265342674_))
                                              (_g4265242671_ _g4265342674_))))
                                      (_g4265242671_ _g4265342674_))))
                              (_g4265242671_ _g4265342674_))))
                      (_g4265242671_ _g4265342674_)))))
          (_g4265142725_ _stx42648_))))
    (define gxc#push-match-vars-stop
      (lambda (_stx42644_ _vars42645_ _K42646_)
        (if (null? _vars42645_)
            _stx42644_
            (gxc#xform-wrap-source
             (cons '%#let-values
                   (cons (reverse _vars42645_) (cons _stx42644_ '())))
             _stx42644_))))))
