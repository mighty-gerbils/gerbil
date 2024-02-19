(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1708337962)
  (begin
    (define displayln
      (lambda _args57707_
        (let _lp57709_ ((_rest57711_ _args57707_))
          (let* ((_rest5771257720_ _rest57711_)
                 (_else5771457728_ (lambda () (newline)))
                 (_K5771657734_
                  (lambda (_rest57731_ _hd57732_)
                    (display _hd57732_)
                    (let () (declare (not safe)) (_lp57709_ _rest57731_)))))
            (if (let () (declare (not safe)) (##pair? _rest5771257720_))
                (let ((_hd5771757737_
                       (let () (declare (not safe)) (##car _rest5771257720_)))
                      (_tl5771857739_
                       (let () (declare (not safe)) (##cdr _rest5771257720_))))
                  (let* ((_hd57742_ _hd5771757737_)
                         (_rest57744_ _tl5771857739_))
                    (declare (not safe))
                    (_K5771657734_ _rest57744_ _hd57742_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args57705_ (for-each display _args57705_)))
    (define file-newer?
      (lambda (_file157698_ _file257699_)
        (letrec ((_modification-time57701_
                  (lambda (_file57703_)
                    (let ((__tmp62114
                           (file-info-last-modification-time
                            (file-info _file57703_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp62114)))))
          (let ((__tmp62116
                 (let ()
                   (declare (not safe))
                   (_modification-time57701_ _file157698_)))
                (__tmp62115
                 (let ()
                   (declare (not safe))
                   (_modification-time57701_ _file257699_))))
            (declare (not safe))
            (##fl> __tmp62116 __tmp62115)))))
    (define create-directory*__%
      (lambda (_dir57672_ _perms57673_)
        (letrec ((_create157675_
                  (lambda (_path57686_)
                    (if (file-exists? _path57686_)
                        (if (let ((__tmp62117 (file-type _path57686_)))
                              (declare (not safe))
                              (eq? __tmp62117 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path57686_))
                        (if _perms57673_
                            (create-directory
                             (list 'path:
                                   _path57686_
                                   'permissions:
                                   _perms57673_))
                            (create-directory _path57686_))))))
          (if (file-exists? _dir57672_)
              '#!void
              (let _lp57677_ ((_start57679_ '0))
                (let ((_$e57681_
                       (let ()
                         (declare (not safe))
                         (string-index__% _dir57672_ '#\/ _start57679_))))
                  (if _$e57681_
                      ((lambda (_x57684_)
                         (if (let () (declare (not safe)) (##fx> _x57684_ '0))
                             (let ((__tmp62118
                                    (substring _dir57672_ '0 _x57684_)))
                               (declare (not safe))
                               (_create157675_ __tmp62118))
                             '#!void)
                         (let ((__tmp62119
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x57684_ '1))))
                           (declare (not safe))
                           (_lp57677_ __tmp62119)))
                       _$e57681_)
                      (let ()
                        (declare (not safe))
                        (_create157675_ _dir57672_)))))))))
    (define create-directory*__0
      (lambda (_dir57691_)
        (let ((_perms57693_ '493))
          (declare (not safe))
          (create-directory*__% _dir57691_ _perms57693_))))
    (define create-directory*
      (lambda _g62121_
        (let ((_g62120_ (let () (declare (not safe)) (##length _g62121_))))
          (cond ((let () (declare (not safe)) (##fx= _g62120_ 1))
                 (apply (lambda (_dir57691_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir57691_)))
                        _g62121_))
                ((let () (declare (not safe)) (##fx= _g62120_ 2))
                 (apply (lambda (_dir57695_ _perms57696_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir57695_ _perms57696_)))
                        _g62121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g62121_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g62122_ '#t))
    (define true?
      (lambda (_obj57668_) (let () (declare (not safe)) (eq? _obj57668_ '#t))))
    (define false (lambda _g62123_ '#f))
    (define void (lambda _g62124_ '#!void))
    (define void?
      (lambda (_obj57664_)
        (let () (declare (not safe)) (eq? _obj57664_ '#!void))))
    (define eof-object (lambda _g62125_ '#!eof))
    (define identity (lambda (_obj57661_) _obj57661_))
    (define dssl-object?
      (lambda (_obj57659_)
        (if (memq _obj57659_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj57657_)
        (let () (declare (not safe)) (eq? _obj57657_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj57655_)
        (let () (declare (not safe)) (eq? _obj57655_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj57653_)
        (let () (declare (not safe)) (eq? _obj57653_ '#!optional))))
    (define immediate?
      (lambda (_obj57649_)
        (let* ((_t57651_ (let () (declare (not safe)) (##type _obj57649_)))
               (__tmp62126
                (let () (declare (not safe)) (##fxand _t57651_ '1))))
          (declare (not safe))
          (##fxzero? __tmp62126))))
    (define nonnegative-fixnum?
      (lambda (_obj57647_)
        (if (let () (declare (not safe)) (fixnum? _obj57647_))
            (let ((__tmp62127 (fxnegative? _obj57647_)))
              (declare (not safe))
              (not __tmp62127))
            '#f)))
    (define values-count
      (lambda (_obj57645_)
        (if (let () (declare (not safe)) (##values? _obj57645_))
            (let () (declare (not safe)) (##vector-length _obj57645_))
            '1)))
    (define values-ref
      (lambda (_obj57642_ _k57643_)
        (if (let () (declare (not safe)) (##values? _obj57642_))
            (let () (declare (not safe)) (##vector-ref _obj57642_ _k57643_))
            _obj57642_)))
    (define values->list
      (lambda (_obj57640_)
        (if (let () (declare (not safe)) (##values? _obj57640_))
            (let () (declare (not safe)) (##vector->list _obj57640_))
            (list _obj57640_))))
    (define subvector->list__%
      (lambda (_obj57625_ _start57626_)
        (let ((_lst57628_
               (let () (declare (not safe)) (##vector->list _obj57625_))))
          (list-tail _lst57628_ _start57626_))))
    (define subvector->list__0
      (lambda (_obj57633_)
        (let ((_start57635_ '0))
          (declare (not safe))
          (subvector->list__% _obj57633_ _start57635_))))
    (define subvector->list
      (lambda _g62129_
        (let ((_g62128_ (let () (declare (not safe)) (##length _g62129_))))
          (cond ((let () (declare (not safe)) (##fx= _g62128_ 1))
                 (apply (lambda (_obj57633_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj57633_)))
                        _g62129_))
                ((let () (declare (not safe)) (##fx= _g62128_ 2))
                 (apply (lambda (_obj57637_ _start57638_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj57637_ _start57638_)))
                        _g62129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g62129_))))))
    (define make-list__%
      (lambda (_k57606_ _val57607_)
        (if (let () (declare (not safe)) (fixnum? _k57606_))
            '#!void
            (error '"expected argument 1 to be fixnum" _k57606_))
        (let _lp57609_ ((_n57611_ '0) (_r57612_ '()))
          (if (let () (declare (not safe)) (##fx< _n57611_ _k57606_))
              (let ((__tmp62131
                     (let () (declare (not safe)) (##fx+ _n57611_ '1)))
                    (__tmp62130
                     (let () (declare (not safe)) (cons _val57607_ _r57612_))))
                (declare (not safe))
                (_lp57609_ __tmp62131 __tmp62130))
              _r57612_))))
    (define make-list__0
      (lambda (_k57617_)
        (let ((_val57619_ '#f))
          (declare (not safe))
          (make-list__% _k57617_ _val57619_))))
    (define make-list
      (lambda _g62133_
        (let ((_g62132_ (let () (declare (not safe)) (##length _g62133_))))
          (cond ((let () (declare (not safe)) (##fx= _g62132_ 1))
                 (apply (lambda (_k57617_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k57617_)))
                        _g62133_))
                ((let () (declare (not safe)) (##fx= _g62132_ 2))
                 (apply (lambda (_k57621_ _val57622_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k57621_ _val57622_)))
                        _g62133_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g62133_))))))
    (define cons*
      (lambda (_x57596_ _y57597_ . _rest57598_)
        (letrec ((_recur57600_
                  (lambda (_x57602_ _rest57603_)
                    (if (let () (declare (not safe)) (pair? _rest57603_))
                        (let ((__tmp62134
                               (let ((__tmp62136
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest57603_)))
                                     (__tmp62135
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest57603_))))
                                 (declare (not safe))
                                 (_recur57600_ __tmp62136 __tmp62135))))
                          (declare (not safe))
                          (cons _x57602_ __tmp62134))
                        _x57602_))))
          (let ((__tmp62137
                 (let ()
                   (declare (not safe))
                   (_recur57600_ _y57597_ _rest57598_))))
            (declare (not safe))
            (cons _x57596_ __tmp62137)))))
    (define foldl1
      (lambda (_f57554_ _iv57555_ _lst57556_)
        (let _lp57558_ ((_rest57560_ _lst57556_) (_r57561_ _iv57555_))
          (let* ((_rest5756257570_ _rest57560_)
                 (_else5756457578_ (lambda () _r57561_))
                 (_K5756657584_
                  (lambda (_rest57581_ _x57582_)
                    (let ((__tmp62138 (_f57554_ _x57582_ _r57561_)))
                      (declare (not safe))
                      (_lp57558_ _rest57581_ __tmp62138)))))
            (if (let () (declare (not safe)) (##pair? _rest5756257570_))
                (let ((_hd5756757587_
                       (let () (declare (not safe)) (##car _rest5756257570_)))
                      (_tl5756857589_
                       (let () (declare (not safe)) (##cdr _rest5756257570_))))
                  (let* ((_x57592_ _hd5756757587_)
                         (_rest57594_ _tl5756857589_))
                    (declare (not safe))
                    (_K5756657584_ _rest57594_ _x57592_)))
                (let () (declare (not safe)) (_else5756457578_)))))))
    (define foldl2
      (lambda (_f57477_ _iv57478_ _lst157479_ _lst257480_)
        (let _lp57482_ ((_rest157484_ _lst157479_)
                        (_rest257485_ _lst257480_)
                        (_r57486_ _iv57478_))
          (let* ((_rest15748757495_ _rest157484_)
                 (_else5748957503_ (lambda () _r57486_))
                 (_K5749157542_
                  (lambda (_rest157506_ _x157507_)
                    (let* ((_rest25750857516_ _rest257485_)
                           (_else5751057524_ (lambda () _r57486_))
                           (_K5751257530_
                            (lambda (_rest257527_ _x257528_)
                              (let ((__tmp62139
                                     (_f57477_ _x157507_ _x257528_ _r57486_)))
                                (declare (not safe))
                                (_lp57482_
                                 _rest157506_
                                 _rest257527_
                                 __tmp62139)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25750857516_))
                          (let ((_hd5751357533_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25750857516_)))
                                (_tl5751457535_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25750857516_))))
                            (let* ((_x257538_ _hd5751357533_)
                                   (_rest257540_ _tl5751457535_))
                              (declare (not safe))
                              (_K5751257530_ _rest257540_ _x257538_)))
                          (let () (declare (not safe)) (_else5751057524_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15748757495_))
                (let ((_hd5749257545_
                       (let () (declare (not safe)) (##car _rest15748757495_)))
                      (_tl5749357547_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15748757495_))))
                  (let* ((_x157550_ _hd5749257545_)
                         (_rest157552_ _tl5749357547_))
                    (declare (not safe))
                    (_K5749157542_ _rest157552_ _x157550_)))
                (let () (declare (not safe)) (_else5748957503_)))))))
    (define foldl
      (lambda _g62141_
        (let ((_g62140_ (let () (declare (not safe)) (##length _g62141_))))
          (cond ((let () (declare (not safe)) (##fx= _g62140_ 3))
                 (apply (lambda (_f57462_ _iv57463_ _lst57464_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f57462_ _iv57463_ _lst57464_)))
                        _g62141_))
                ((let () (declare (not safe)) (##fx= _g62140_ 4))
                 (apply (lambda (_f57466_ _iv57467_ _lst157468_ _lst257469_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f57466_
                                    _iv57467_
                                    _lst157468_
                                    _lst257469_)))
                        _g62141_))
                ((let () (declare (not safe)) (##fx>= _g62140_ 4))
                 (apply foldl* _g62141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g62141_))))))
    (define foldl*
      (lambda (_f57450_ _iv57451_ . _rest57452_)
        (let _recur57454_ ((_iv57456_ _iv57451_) (_rest57457_ _rest57452_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57457_))
              (let ((__tmp62143
                     (apply _f57450_
                            (let ((__tmp62145
                                   (lambda (_xs57459_ _r57460_)
                                     (let ((__tmp62146 (car _xs57459_)))
                                       (declare (not safe))
                                       (cons __tmp62146 _r57460_))))
                                  (__tmp62144 (list _iv57456_)))
                              (declare (not safe))
                              (foldr1 __tmp62145 __tmp62144 _rest57457_))))
                    (__tmp62142 (map cdr _rest57457_)))
                (declare (not safe))
                (_recur57454_ __tmp62143 __tmp62142))
              _iv57456_))))
    (define foldr1
      (lambda (_f57409_ _iv57410_ _lst57411_)
        (let _recur57413_ ((_rest57415_ _lst57411_))
          (let* ((_rest5741657424_ _rest57415_)
                 (_else5741857432_ (lambda () _iv57410_))
                 (_K5742057438_
                  (lambda (_rest57435_ _x57436_)
                    (_f57409_
                     _x57436_
                     (let ()
                       (declare (not safe))
                       (_recur57413_ _rest57435_))))))
            (if (let () (declare (not safe)) (##pair? _rest5741657424_))
                (let ((_hd5742157441_
                       (let () (declare (not safe)) (##car _rest5741657424_)))
                      (_tl5742257443_
                       (let () (declare (not safe)) (##cdr _rest5741657424_))))
                  (let* ((_x57446_ _hd5742157441_)
                         (_rest57448_ _tl5742257443_))
                    (declare (not safe))
                    (_K5742057438_ _rest57448_ _x57446_)))
                (let () (declare (not safe)) (_else5741857432_)))))))
    (define foldr2
      (lambda (_f57333_ _iv57334_ _lst157335_ _lst257336_)
        (let _recur57338_ ((_rest157340_ _lst157335_)
                           (_rest257341_ _lst257336_))
          (let* ((_rest15734257350_ _rest157340_)
                 (_else5734457358_ (lambda () _iv57334_))
                 (_K5734657397_
                  (lambda (_rest157361_ _x157362_)
                    (let* ((_rest25736357371_ _rest257341_)
                           (_else5736557379_ (lambda () _iv57334_))
                           (_K5736757385_
                            (lambda (_rest257382_ _x257383_)
                              (_f57333_
                               _x157362_
                               _x257383_
                               (let ()
                                 (declare (not safe))
                                 (_recur57338_ _rest157361_ _rest257382_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25736357371_))
                          (let ((_hd5736857388_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25736357371_)))
                                (_tl5736957390_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25736357371_))))
                            (let* ((_x257393_ _hd5736857388_)
                                   (_rest257395_ _tl5736957390_))
                              (declare (not safe))
                              (_K5736757385_ _rest257395_ _x257393_)))
                          (let () (declare (not safe)) (_else5736557379_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15734257350_))
                (let ((_hd5734757400_
                       (let () (declare (not safe)) (##car _rest15734257350_)))
                      (_tl5734857402_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15734257350_))))
                  (let* ((_x157405_ _hd5734757400_)
                         (_rest157407_ _tl5734857402_))
                    (declare (not safe))
                    (_K5734657397_ _rest157407_ _x157405_)))
                (let () (declare (not safe)) (_else5734457358_)))))))
    (define foldr
      (lambda _g62148_
        (let ((_g62147_ (let () (declare (not safe)) (##length _g62148_))))
          (cond ((let () (declare (not safe)) (##fx= _g62147_ 3))
                 (apply (lambda (_f57318_ _iv57319_ _lst57320_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f57318_ _iv57319_ _lst57320_)))
                        _g62148_))
                ((let () (declare (not safe)) (##fx= _g62147_ 4))
                 (apply (lambda (_f57322_ _iv57323_ _lst157324_ _lst257325_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f57322_
                                    _iv57323_
                                    _lst157324_
                                    _lst257325_)))
                        _g62148_))
                ((let () (declare (not safe)) (##fx>= _g62147_ 4))
                 (apply foldr* _g62148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g62148_))))))
    (define foldr*
      (lambda (_f57307_ _iv57308_ . _rest57309_)
        (let _recur57311_ ((_rest57313_ _rest57309_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57313_))
              (apply _f57307_
                     (let ((__tmp62151
                            (lambda (_xs57315_ _r57316_)
                              (let ((__tmp62152 (car _xs57315_)))
                                (declare (not safe))
                                (cons __tmp62152 _r57316_))))
                           (__tmp62149
                            (list (let ((__tmp62150 (map cdr _rest57313_)))
                                    (declare (not safe))
                                    (_recur57311_ __tmp62150)))))
                       (declare (not safe))
                       (foldr1 __tmp62151 __tmp62149 _rest57313_)))
              _iv57308_))))
    (define drop
      (lambda (_l57304_ _k57305_)
        (if (let () (declare (not safe)) (##fxpositive? _k57305_))
            (let ((__tmp62154 (let () (declare (not safe)) (##cdr _l57304_)))
                  (__tmp62153
                   (let () (declare (not safe)) (##fx- _k57305_ '1))))
              (declare (not safe))
              (drop __tmp62154 __tmp62153))
            _l57304_)))
    (define remove-nulls!
      (lambda (_l57191_)
        (let* ((_l5719257205_ _l57191_)
               (_E5719657209_
                (lambda () (error '"No clause matching" _l5719257205_))))
          (let ((_K5720157294_
                 (lambda (_r57292_)
                   (let () (declare (not safe)) (remove-nulls! _r57292_))))
                (_K5719857281_
                 (lambda (_r57221_)
                   (let _loop57223_ ((_l57225_ _l57191_) (_r57226_ _r57221_))
                     (let* ((_r5722757240_ _r57226_)
                            (_E5723157244_
                             (lambda ()
                               (error '"No clause matching" _r5722757240_))))
                       (let ((_K5723657271_
                              (lambda (_rr57269_)
                                (set-cdr!
                                 _l57225_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr57269_)))))
                             (_K5723357258_
                              (lambda (_rr57256_)
                                (let ()
                                  (declare (not safe))
                                  (_loop57223_ _r57226_ _rr57256_))))
                             (_K5723257249_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5722757240_))
                             (let ((_tl5723857276_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5722757240_)))
                                   (_hd5723757274_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5722757240_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5723757274_))
                                   (let ((_rr57279_ _tl5723857276_))
                                     (declare (not safe))
                                     (_K5723657271_ _rr57279_))
                                   (let ((_rr57264_ _tl5723857276_))
                                     (declare (not safe))
                                     (_K5723357258_ _rr57264_))))
                             '#!void))))
                   _l57191_))
                (_K5719757214_ (lambda () _l57191_)))
            (if (let () (declare (not safe)) (##pair? _l5719257205_))
                (let ((_tl5720357299_
                       (let () (declare (not safe)) (##cdr _l5719257205_)))
                      (_hd5720257297_
                       (let () (declare (not safe)) (##car _l5719257205_))))
                  (if (let () (declare (not safe)) (##null? _hd5720257297_))
                      (let ((_r57302_ _tl5720357299_))
                        (declare (not safe))
                        (remove-nulls! _r57302_))
                      (let ((_r57287_ _tl5720357299_))
                        (declare (not safe))
                        (_K5719857281_ _r57287_))))
                (let () (declare (not safe)) (_K5719757214_)))))))
    (define append1!
      (lambda (_l57186_ _x57187_)
        (let ((_l257189_ (let () (declare (not safe)) (cons _x57187_ '()))))
          (if (let () (declare (not safe)) (pair? _l57186_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l57186_))
               _l257189_)
              _l257189_))))
    (define append-reverse
      (lambda (_rev-head57183_ _tail57184_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail57184_ _rev-head57183_))))
    (define append-reverse-until
      (lambda (_pred57136_ _rhead57137_ _tail57138_)
        (let _loop57140_ ((_rhead57142_ _rhead57137_)
                          (_tail57143_ _tail57138_))
          (let* ((_rhead5714457153_ _rhead57142_)
                 (_E5714757157_
                  (lambda () (error '"No clause matching" _rhead5714457153_))))
            (let ((_K5715157180_ (lambda () (values '() _tail57143_)))
                  (_K5714857164_
                   (lambda (_r57161_ _a57162_)
                     (if (_pred57136_ _a57162_)
                         (values _rhead57142_ _tail57143_)
                         (let ((__tmp62155
                                (let ()
                                  (declare (not safe))
                                  (cons _a57162_ _tail57143_))))
                           (declare (not safe))
                           (_loop57140_ _r57161_ __tmp62155))))))
              (let ((_try-match5714657176_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5714457153_))
                           (let ((_tl5715057169_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5714457153_)))
                                 (_hd5714957167_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5714457153_))))
                             (let ((_a57172_ _hd5714957167_)
                                   (_r57174_ _tl5715057169_))
                               (let ()
                                 (declare (not safe))
                                 (_K5714857164_ _r57174_ _a57172_))))
                           (let () (declare (not safe)) (_E5714757157_))))))
                (if (let () (declare (not safe)) (##null? _rhead5714457153_))
                    (let () (declare (not safe)) (_K5715157180_))
                    (let ()
                      (declare (not safe))
                      (_try-match5714657176_)))))))))
    (define andmap1
      (lambda (_f57096_ _lst57097_)
        (let _lp57099_ ((_rest57101_ _lst57097_))
          (let* ((_rest5710257110_ _rest57101_)
                 (_else5710457118_ (lambda () '#t))
                 (_K5710657124_
                  (lambda (_rest57121_ _x57122_)
                    (if (_f57096_ _x57122_)
                        (let () (declare (not safe)) (_lp57099_ _rest57121_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5710257110_))
                (let ((_hd5710757127_
                       (let () (declare (not safe)) (##car _rest5710257110_)))
                      (_tl5710857129_
                       (let () (declare (not safe)) (##cdr _rest5710257110_))))
                  (let* ((_x57132_ _hd5710757127_)
                         (_rest57134_ _tl5710857129_))
                    (declare (not safe))
                    (_K5710657124_ _rest57134_ _x57132_)))
                (let () (declare (not safe)) (_else5710457118_)))))))
    (define andmap2
      (lambda (_f57021_ _lst157022_ _lst257023_)
        (let _lp57025_ ((_rest157027_ _lst157022_) (_rest257028_ _lst257023_))
          (let* ((_rest15702957037_ _rest157027_)
                 (_else5703157045_ (lambda () '#t))
                 (_K5703357084_
                  (lambda (_rest157048_ _x157049_)
                    (let* ((_rest25705057058_ _rest257028_)
                           (_else5705257066_ (lambda () '#t))
                           (_K5705457072_
                            (lambda (_rest257069_ _x257070_)
                              (if (_f57021_ _x157049_ _x257070_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp57025_ _rest157048_ _rest257069_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25705057058_))
                          (let ((_hd5705557075_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25705057058_)))
                                (_tl5705657077_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25705057058_))))
                            (let* ((_x257080_ _hd5705557075_)
                                   (_rest257082_ _tl5705657077_))
                              (declare (not safe))
                              (_K5705457072_ _rest257082_ _x257080_)))
                          (let () (declare (not safe)) (_else5705257066_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15702957037_))
                (let ((_hd5703457087_
                       (let () (declare (not safe)) (##car _rest15702957037_)))
                      (_tl5703557089_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15702957037_))))
                  (let* ((_x157092_ _hd5703457087_)
                         (_rest157094_ _tl5703557089_))
                    (declare (not safe))
                    (_K5703357084_ _rest157094_ _x157092_)))
                (let () (declare (not safe)) (_else5703157045_)))))))
    (define andmap
      (lambda _g62157_
        (let ((_g62156_ (let () (declare (not safe)) (##length _g62157_))))
          (cond ((let () (declare (not safe)) (##fx= _g62156_ 2))
                 (apply (lambda (_f57009_ _lst57010_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f57009_ _lst57010_)))
                        _g62157_))
                ((let () (declare (not safe)) (##fx= _g62156_ 3))
                 (apply (lambda (_f57012_ _lst157013_ _lst257014_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f57012_ _lst157013_ _lst257014_)))
                        _g62157_))
                ((let () (declare (not safe)) (##fx>= _g62156_ 3))
                 (apply andmap* _g62157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g62157_))))))
    (define andmap*
      (lambda (_f57002_ . _rest57003_)
        (let _recur57005_ ((_rest57007_ _rest57003_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57007_))
              (if (apply _f57002_ (map car _rest57007_))
                  (let ((__tmp62158 (map cdr _rest57007_)))
                    (declare (not safe))
                    (_recur57005_ __tmp62158))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f56959_ _lst56960_)
        (let _lp56962_ ((_rest56964_ _lst56960_))
          (let* ((_rest5696556973_ _rest56964_)
                 (_else5696756981_ (lambda () '#f))
                 (_K5696956990_
                  (lambda (_rest56984_ _x56985_)
                    (let ((_$e56987_ (_f56959_ _x56985_)))
                      (if _$e56987_
                          _$e56987_
                          (let ()
                            (declare (not safe))
                            (_lp56962_ _rest56984_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5696556973_))
                (let ((_hd5697056993_
                       (let () (declare (not safe)) (##car _rest5696556973_)))
                      (_tl5697156995_
                       (let () (declare (not safe)) (##cdr _rest5696556973_))))
                  (let* ((_x56998_ _hd5697056993_)
                         (_rest57000_ _tl5697156995_))
                    (declare (not safe))
                    (_K5696956990_ _rest57000_ _x56998_)))
                (let () (declare (not safe)) (_else5696756981_)))))))
    (define ormap2
      (lambda (_f56881_ _lst156882_ _lst256883_)
        (let _lp56885_ ((_rest156887_ _lst156882_) (_rest256888_ _lst256883_))
          (let* ((_rest15688956897_ _rest156887_)
                 (_else5689156905_ (lambda () '#f))
                 (_K5689356947_
                  (lambda (_rest156908_ _x156909_)
                    (let* ((_rest25691056918_ _rest256888_)
                           (_else5691256926_ (lambda () '#f))
                           (_K5691456935_
                            (lambda (_rest256929_ _x256930_)
                              (let ((_$e56932_ (_f56881_ _x156909_ _x256930_)))
                                (if _$e56932_
                                    _$e56932_
                                    (let ()
                                      (declare (not safe))
                                      (_lp56885_
                                       _rest156908_
                                       _rest256929_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25691056918_))
                          (let ((_hd5691556938_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25691056918_)))
                                (_tl5691656940_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25691056918_))))
                            (let* ((_x256943_ _hd5691556938_)
                                   (_rest256945_ _tl5691656940_))
                              (declare (not safe))
                              (_K5691456935_ _rest256945_ _x256943_)))
                          (let () (declare (not safe)) (_else5691256926_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15688956897_))
                (let ((_hd5689456950_
                       (let () (declare (not safe)) (##car _rest15688956897_)))
                      (_tl5689556952_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15688956897_))))
                  (let* ((_x156955_ _hd5689456950_)
                         (_rest156957_ _tl5689556952_))
                    (declare (not safe))
                    (_K5689356947_ _rest156957_ _x156955_)))
                (let () (declare (not safe)) (_else5689156905_)))))))
    (define ormap
      (lambda _g62160_
        (let ((_g62159_ (let () (declare (not safe)) (##length _g62160_))))
          (cond ((let () (declare (not safe)) (##fx= _g62159_ 2))
                 (apply (lambda (_f56869_ _lst56870_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f56869_ _lst56870_)))
                        _g62160_))
                ((let () (declare (not safe)) (##fx= _g62159_ 3))
                 (apply (lambda (_f56872_ _lst156873_ _lst256874_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f56872_ _lst156873_ _lst256874_)))
                        _g62160_))
                ((let () (declare (not safe)) (##fx>= _g62159_ 3))
                 (apply ormap* _g62160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g62160_))))))
    (define ormap*
      (lambda (_f56859_ . _rest56860_)
        (let _recur56862_ ((_rest56864_ _rest56860_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56864_))
              (let ((_$e56866_ (apply _f56859_ (map car _rest56864_))))
                (if _$e56866_
                    _$e56866_
                    (let ((__tmp62161 (map cdr _rest56864_)))
                      (declare (not safe))
                      (_recur56862_ __tmp62161))))
              '#f))))
    (define filter
      (lambda (_f56817_ _lst56818_)
        (let _recur56820_ ((_lst56822_ _lst56818_))
          (let* ((_lst5682356831_ _lst56822_)
                 (_else5682556839_ (lambda () '()))
                 (_K5682756847_
                  (lambda (_rest56842_ _hd56843_)
                    (if (_f56817_ _hd56843_)
                        (let ((_tail56845_
                               (let ()
                                 (declare (not safe))
                                 (_recur56820_ _rest56842_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail56845_ _rest56842_))
                              _lst56822_
                              (let ()
                                (declare (not safe))
                                (cons _hd56843_ _tail56845_))))
                        (let ()
                          (declare (not safe))
                          (_recur56820_ _rest56842_))))))
            (if (let () (declare (not safe)) (##pair? _lst5682356831_))
                (let ((_hd5682856850_
                       (let () (declare (not safe)) (##car _lst5682356831_)))
                      (_tl5682956852_
                       (let () (declare (not safe)) (##cdr _lst5682356831_))))
                  (let* ((_hd56855_ _hd5682856850_)
                         (_rest56857_ _tl5682956852_))
                    (declare (not safe))
                    (_K5682756847_ _rest56857_ _hd56855_)))
                (let () (declare (not safe)) (_else5682556839_)))))))
    (define filter-map1
      (lambda (_f56772_ _lst56773_)
        (let _recur56775_ ((_rest56777_ _lst56773_))
          (let* ((_rest5677856786_ _rest56777_)
                 (_else5678056794_ (lambda () '()))
                 (_K5678256805_
                  (lambda (_rest56797_ _x56798_)
                    (let ((_$e56800_ (_f56772_ _x56798_)))
                      (if _$e56800_
                          ((lambda (_r56803_)
                             (let ((__tmp62162
                                    (let ()
                                      (declare (not safe))
                                      (_recur56775_ _rest56797_))))
                               (declare (not safe))
                               (cons _r56803_ __tmp62162)))
                           _$e56800_)
                          (let ()
                            (declare (not safe))
                            (_recur56775_ _rest56797_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5677856786_))
                (let ((_hd5678356808_
                       (let () (declare (not safe)) (##car _rest5677856786_)))
                      (_tl5678456810_
                       (let () (declare (not safe)) (##cdr _rest5677856786_))))
                  (let* ((_x56813_ _hd5678356808_)
                         (_rest56815_ _tl5678456810_))
                    (declare (not safe))
                    (_K5678256805_ _rest56815_ _x56813_)))
                (let () (declare (not safe)) (_else5678056794_)))))))
    (define filter-map2
      (lambda (_f56692_ _lst156693_ _lst256694_)
        (let _recur56696_ ((_rest156698_ _lst156693_)
                           (_rest256699_ _lst256694_))
          (let* ((_rest15670056708_ _rest156698_)
                 (_else5670256716_ (lambda () '()))
                 (_K5670456760_
                  (lambda (_rest156719_ _x156720_)
                    (let* ((_rest25672156729_ _rest256699_)
                           (_else5672356737_ (lambda () '()))
                           (_K5672556748_
                            (lambda (_rest256740_ _x256741_)
                              (let ((_$e56743_ (_f56692_ _x156720_ _x256741_)))
                                (if _$e56743_
                                    ((lambda (_r56746_)
                                       (let ((__tmp62163
                                              (let ()
                                                (declare (not safe))
                                                (_recur56696_
                                                 _rest156719_
                                                 _rest256740_))))
                                         (declare (not safe))
                                         (cons _r56746_ __tmp62163)))
                                     _$e56743_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur56696_
                                       _rest156719_
                                       _rest256740_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25672156729_))
                          (let ((_hd5672656751_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25672156729_)))
                                (_tl5672756753_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25672156729_))))
                            (let* ((_x256756_ _hd5672656751_)
                                   (_rest256758_ _tl5672756753_))
                              (declare (not safe))
                              (_K5672556748_ _rest256758_ _x256756_)))
                          (let () (declare (not safe)) (_else5672356737_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15670056708_))
                (let ((_hd5670556763_
                       (let () (declare (not safe)) (##car _rest15670056708_)))
                      (_tl5670656765_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15670056708_))))
                  (let* ((_x156768_ _hd5670556763_)
                         (_rest156770_ _tl5670656765_))
                    (declare (not safe))
                    (_K5670456760_ _rest156770_ _x156768_)))
                (let () (declare (not safe)) (_else5670256716_)))))))
    (define filter-map
      (lambda _g62165_
        (let ((_g62164_ (let () (declare (not safe)) (##length _g62165_))))
          (cond ((let () (declare (not safe)) (##fx= _g62164_ 2))
                 (apply (lambda (_f56680_ _lst56681_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f56680_ _lst56681_)))
                        _g62165_))
                ((let () (declare (not safe)) (##fx= _g62164_ 3))
                 (apply (lambda (_f56683_ _lst156684_ _lst256685_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f56683_ _lst156684_ _lst256685_)))
                        _g62165_))
                ((let () (declare (not safe)) (##fx>= _g62164_ 3))
                 (apply filter-map* _g62165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g62165_))))))
    (define filter-map*
      (lambda (_f56668_ . _rest56669_)
        (let _recur56671_ ((_rest56673_ _rest56669_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56673_))
              (let ((_$e56675_ (apply _f56668_ (map car _rest56673_))))
                (if _$e56675_
                    ((lambda (_r56678_)
                       (let ((__tmp62167
                              (let ((__tmp62168 (map cdr _rest56673_)))
                                (declare (not safe))
                                (_recur56671_ __tmp62168))))
                         (declare (not safe))
                         (cons _r56678_ __tmp62167)))
                     _$e56675_)
                    (let ((__tmp62166 (map cdr _rest56673_)))
                      (declare (not safe))
                      (_recur56671_ __tmp62166))))
              '()))))
    (define iota__%
      (lambda (_count56636_ _start56637_ _step56638_)
        (if (let () (declare (not safe)) (fixnum? _count56636_))
            '#!void
            (error '"expected fixnum" _count56636_))
        (if (let () (declare (not safe)) (number? _start56637_))
            '#!void
            (error '"expected number" _start56637_))
        (if (let () (declare (not safe)) (number? _step56638_))
            '#!void
            (error '"expected number" _step56638_))
        (let ((_root56640_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp56642_ ((_i56644_ '0)
                          (_x56645_ _start56637_)
                          (_tl56646_ _root56640_))
            (if (let () (declare (not safe)) (##fx< _i56644_ _count56636_))
                (let ((_tl*56648_
                       (let () (declare (not safe)) (cons _x56645_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl56646_ _tl*56648_))
                  (let ((__tmp62170
                         (let () (declare (not safe)) (##fx+ _i56644_ '1)))
                        (__tmp62169 (+ _x56645_ _step56638_)))
                    (declare (not safe))
                    (_lp56642_ __tmp62170 __tmp62169 _tl*56648_)))
                (let () (declare (not safe)) (##cdr _root56640_)))))))
    (define iota__0
      (lambda (_count56653_)
        (let* ((_start56655_ '0) (_step56657_ '1))
          (declare (not safe))
          (iota__% _count56653_ _start56655_ _step56657_))))
    (define iota__1
      (lambda (_count56659_ _start56660_)
        (let ((_step56662_ '1))
          (declare (not safe))
          (iota__% _count56659_ _start56660_ _step56662_))))
    (define iota
      (lambda _g62172_
        (let ((_g62171_ (let () (declare (not safe)) (##length _g62172_))))
          (cond ((let () (declare (not safe)) (##fx= _g62171_ 1))
                 (apply (lambda (_count56653_)
                          (let () (declare (not safe)) (iota__0 _count56653_)))
                        _g62172_))
                ((let () (declare (not safe)) (##fx= _g62171_ 2))
                 (apply (lambda (_count56659_ _start56660_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count56659_ _start56660_)))
                        _g62172_))
                ((let () (declare (not safe)) (##fx= _g62171_ 3))
                 (apply (lambda (_count56664_ _start56665_ _step56666_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count56664_ _start56665_ _step56666_)))
                        _g62172_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g62172_))))))
    (define last-pair
      (lambda (_lst56610_)
        (let* ((_lst5661156618_ _lst56610_)
               (_E5661356622_
                (lambda () (error '"No clause matching" _lst5661156618_)))
               (_K5661456627_
                (lambda (_rest56625_)
                  (if (let () (declare (not safe)) (pair? _rest56625_))
                      (let () (declare (not safe)) (last-pair _rest56625_))
                      _lst56610_))))
          (if (let () (declare (not safe)) (##pair? _lst5661156618_))
              (let* ((_tl5661656630_
                      (let () (declare (not safe)) (##cdr _lst5661156618_)))
                     (_rest56633_ _tl5661656630_))
                (declare (not safe))
                (_K5661456627_ _rest56633_))
              (let () (declare (not safe)) (_E5661356622_))))))
    (define last
      (lambda (_lst56608_)
        (car (let () (declare (not safe)) (last-pair _lst56608_)))))
    (define assgetq__%
      (lambda (_key56586_ _lst56588_ _default56590_)
        (let ((_$e56593_
               (if (let () (declare (not safe)) (pair? _lst56588_))
                   (assq _key56586_ _lst56588_)
                   '#f)))
          (if _$e56593_
              (cdr _$e56593_)
              (if (let () (declare (not safe)) (procedure? _default56590_))
                  (_default56590_ _key56586_)
                  _default56590_)))))
    (define assgetq__0
      (lambda (_key56599_ _lst56600_)
        (let ((_default56602_ '#f))
          (declare (not safe))
          (assgetq__% _key56599_ _lst56600_ _default56602_))))
    (define assgetq
      (lambda _g62174_
        (let ((_g62173_ (let () (declare (not safe)) (##length _g62174_))))
          (cond ((let () (declare (not safe)) (##fx= _g62173_ 2))
                 (apply (lambda (_key56599_ _lst56600_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key56599_ _lst56600_)))
                        _g62174_))
                ((let () (declare (not safe)) (##fx= _g62173_ 3))
                 (apply (lambda (_key56604_ _lst56605_ _default56606_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key56604_ _lst56605_ _default56606_)))
                        _g62174_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g62174_))))))
    (define assgetv__%
      (lambda (_key56563_ _lst56565_ _default56567_)
        (let ((_$e56570_
               (if (let () (declare (not safe)) (pair? _lst56565_))
                   (assv _key56563_ _lst56565_)
                   '#f)))
          (if _$e56570_
              (cdr _$e56570_)
              (if (let () (declare (not safe)) (procedure? _default56567_))
                  (_default56567_ _key56563_)
                  _default56567_)))))
    (define assgetv__0
      (lambda (_key56576_ _lst56577_)
        (let ((_default56579_ '#f))
          (declare (not safe))
          (assgetv__% _key56576_ _lst56577_ _default56579_))))
    (define assgetv
      (lambda _g62176_
        (let ((_g62175_ (let () (declare (not safe)) (##length _g62176_))))
          (cond ((let () (declare (not safe)) (##fx= _g62175_ 2))
                 (apply (lambda (_key56576_ _lst56577_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key56576_ _lst56577_)))
                        _g62176_))
                ((let () (declare (not safe)) (##fx= _g62175_ 3))
                 (apply (lambda (_key56581_ _lst56582_ _default56583_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key56581_ _lst56582_ _default56583_)))
                        _g62176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g62176_))))))
    (define assget__%
      (lambda (_key56540_ _lst56542_ _default56544_)
        (let ((_$e56547_
               (if (let () (declare (not safe)) (pair? _lst56542_))
                   (assoc _key56540_ _lst56542_)
                   '#f)))
          (if _$e56547_
              (cdr _$e56547_)
              (if (let () (declare (not safe)) (procedure? _default56544_))
                  (_default56544_ _key56540_)
                  _default56544_)))))
    (define assget__0
      (lambda (_key56553_ _lst56554_)
        (let ((_default56556_ '#f))
          (declare (not safe))
          (assget__% _key56553_ _lst56554_ _default56556_))))
    (define assget
      (lambda _g62178_
        (let ((_g62177_ (let () (declare (not safe)) (##length _g62178_))))
          (cond ((let () (declare (not safe)) (##fx= _g62177_ 2))
                 (apply (lambda (_key56553_ _lst56554_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key56553_ _lst56554_)))
                        _g62178_))
                ((let () (declare (not safe)) (##fx= _g62177_ 3))
                 (apply (lambda (_key56558_ _lst56559_ _default56560_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key56558_ _lst56559_ _default56560_)))
                        _g62178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g62178_))))))
    (define pgetq__%
      (lambda (_key56469_ _lst56471_ _default56473_)
        (let _lp56476_ ((_rest56479_ _lst56471_))
          (let* ((_rest5648156491_ _rest56479_)
                 (_else5648356499_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default56473_))
                        (_default56473_ _key56469_)
                        _default56473_)))
                 (_K5648556508_
                  (lambda (_rest56502_ _v56503_ _k56505_)
                    (if (let () (declare (not safe)) (eq? _k56505_ _key56469_))
                        _v56503_
                        (let ()
                          (declare (not safe))
                          (_lp56476_ _rest56502_))))))
            (if (let () (declare (not safe)) (##pair? _rest5648156491_))
                (let ((_hd5648656511_
                       (let () (declare (not safe)) (##car _rest5648156491_)))
                      (_tl5648756513_
                       (let () (declare (not safe)) (##cdr _rest5648156491_))))
                  (let ((_k56516_ _hd5648656511_))
                    (if (let () (declare (not safe)) (##pair? _tl5648756513_))
                        (let ((_hd5648856518_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5648756513_)))
                              (_tl5648956520_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5648756513_))))
                          (let* ((_v56523_ _hd5648856518_)
                                 (_rest56525_ _tl5648956520_))
                            (declare (not safe))
                            (_K5648556508_ _rest56525_ _v56523_ _k56516_)))
                        (let () (declare (not safe)) (_else5648356499_)))))
                (let () (declare (not safe)) (_else5648356499_)))))))
    (define pgetq__0
      (lambda (_key56530_ _lst56531_)
        (let ((_default56533_ '#f))
          (declare (not safe))
          (pgetq__% _key56530_ _lst56531_ _default56533_))))
    (define pgetq
      (lambda _g62180_
        (let ((_g62179_ (let () (declare (not safe)) (##length _g62180_))))
          (cond ((let () (declare (not safe)) (##fx= _g62179_ 2))
                 (apply (lambda (_key56530_ _lst56531_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key56530_ _lst56531_)))
                        _g62180_))
                ((let () (declare (not safe)) (##fx= _g62179_ 3))
                 (apply (lambda (_key56535_ _lst56536_ _default56537_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key56535_ _lst56536_ _default56537_)))
                        _g62180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g62180_))))))
    (define pgetv__%
      (lambda (_key56398_ _lst56400_ _default56402_)
        (let _lp56405_ ((_rest56408_ _lst56400_))
          (let* ((_rest5641056420_ _rest56408_)
                 (_else5641256428_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default56402_))
                        (_default56402_ _key56398_)
                        _default56402_)))
                 (_K5641456437_
                  (lambda (_rest56431_ _v56432_ _k56434_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k56434_ _key56398_))
                        _v56432_
                        (let ()
                          (declare (not safe))
                          (_lp56405_ _rest56431_))))))
            (if (let () (declare (not safe)) (##pair? _rest5641056420_))
                (let ((_hd5641556440_
                       (let () (declare (not safe)) (##car _rest5641056420_)))
                      (_tl5641656442_
                       (let () (declare (not safe)) (##cdr _rest5641056420_))))
                  (let ((_k56445_ _hd5641556440_))
                    (if (let () (declare (not safe)) (##pair? _tl5641656442_))
                        (let ((_hd5641756447_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5641656442_)))
                              (_tl5641856449_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5641656442_))))
                          (let* ((_v56452_ _hd5641756447_)
                                 (_rest56454_ _tl5641856449_))
                            (declare (not safe))
                            (_K5641456437_ _rest56454_ _v56452_ _k56445_)))
                        (let () (declare (not safe)) (_else5641256428_)))))
                (let () (declare (not safe)) (_else5641256428_)))))))
    (define pgetv__0
      (lambda (_key56459_ _lst56460_)
        (let ((_default56462_ '#f))
          (declare (not safe))
          (pgetv__% _key56459_ _lst56460_ _default56462_))))
    (define pgetv
      (lambda _g62182_
        (let ((_g62181_ (let () (declare (not safe)) (##length _g62182_))))
          (cond ((let () (declare (not safe)) (##fx= _g62181_ 2))
                 (apply (lambda (_key56459_ _lst56460_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key56459_ _lst56460_)))
                        _g62182_))
                ((let () (declare (not safe)) (##fx= _g62181_ 3))
                 (apply (lambda (_key56464_ _lst56465_ _default56466_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key56464_ _lst56465_ _default56466_)))
                        _g62182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g62182_))))))
    (define pget__%
      (lambda (_key56327_ _lst56329_ _default56331_)
        (let _lp56334_ ((_rest56337_ _lst56329_))
          (let* ((_rest5633956349_ _rest56337_)
                 (_else5634156357_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default56331_))
                        (_default56331_ _key56327_)
                        _default56331_)))
                 (_K5634356366_
                  (lambda (_rest56360_ _v56361_ _k56363_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k56363_ _key56327_))
                        _v56361_
                        (let ()
                          (declare (not safe))
                          (_lp56334_ _rest56360_))))))
            (if (let () (declare (not safe)) (##pair? _rest5633956349_))
                (let ((_hd5634456369_
                       (let () (declare (not safe)) (##car _rest5633956349_)))
                      (_tl5634556371_
                       (let () (declare (not safe)) (##cdr _rest5633956349_))))
                  (let ((_k56374_ _hd5634456369_))
                    (if (let () (declare (not safe)) (##pair? _tl5634556371_))
                        (let ((_hd5634656376_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5634556371_)))
                              (_tl5634756378_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5634556371_))))
                          (let* ((_v56381_ _hd5634656376_)
                                 (_rest56383_ _tl5634756378_))
                            (declare (not safe))
                            (_K5634356366_ _rest56383_ _v56381_ _k56374_)))
                        (let () (declare (not safe)) (_else5634156357_)))))
                (let () (declare (not safe)) (_else5634156357_)))))))
    (define pget__0
      (lambda (_key56388_ _lst56389_)
        (let ((_default56391_ '#f))
          (declare (not safe))
          (pget__% _key56388_ _lst56389_ _default56391_))))
    (define pget
      (lambda _g62184_
        (let ((_g62183_ (let () (declare (not safe)) (##length _g62184_))))
          (cond ((let () (declare (not safe)) (##fx= _g62183_ 2))
                 (apply (lambda (_key56388_ _lst56389_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key56388_ _lst56389_)))
                        _g62184_))
                ((let () (declare (not safe)) (##fx= _g62183_ 3))
                 (apply (lambda (_key56393_ _lst56394_ _default56395_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key56393_ _lst56394_ _default56395_)))
                        _g62184_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g62184_))))))
    (define find
      (lambda (_pred56320_ _lst56321_)
        (let ((_$e56323_
               (let () (declare (not safe)) (memf _pred56320_ _lst56321_))))
          (if _$e56323_ (car _$e56323_) '#f))))
    (define memf
      (lambda (_proc56280_ _lst56281_)
        (let _lp56283_ ((_rest56285_ _lst56281_))
          (let* ((_rest5628656294_ _rest56285_)
                 (_else5628856302_ (lambda () '#f))
                 (_K5629056308_
                  (lambda (_tl56305_ _hd56306_)
                    (if (_proc56280_ _hd56306_)
                        _rest56285_
                        (let () (declare (not safe)) (_lp56283_ _tl56305_))))))
            (if (let () (declare (not safe)) (##pair? _rest5628656294_))
                (let ((_hd5629156311_
                       (let () (declare (not safe)) (##car _rest5628656294_)))
                      (_tl5629256313_
                       (let () (declare (not safe)) (##cdr _rest5628656294_))))
                  (let* ((_hd56316_ _hd5629156311_) (_tl56318_ _tl5629256313_))
                    (declare (not safe))
                    (_K5629056308_ _tl56318_ _hd56316_)))
                (let () (declare (not safe)) (_else5628856302_)))))))
    (define remove1
      (lambda (_el56233_ _lst56235_)
        (let _lp56238_ ((_rest56241_ _lst56235_) (_r56243_ '()))
          (let* ((_rest5624556253_ _rest56241_)
                 (_else5624756261_ (lambda () _lst56235_))
                 (_K5624956268_
                  (lambda (_rest56264_ _hd56265_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el56233_ _hd56265_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56264_ _r56243_))
                        (let ((__tmp62185
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56265_ _r56243_))))
                          (declare (not safe))
                          (_lp56238_ _rest56264_ __tmp62185))))))
            (if (let () (declare (not safe)) (##pair? _rest5624556253_))
                (let ((_hd5625056271_
                       (let () (declare (not safe)) (##car _rest5624556253_)))
                      (_tl5625156273_
                       (let () (declare (not safe)) (##cdr _rest5624556253_))))
                  (let* ((_hd56276_ _hd5625056271_)
                         (_rest56278_ _tl5625156273_))
                    (declare (not safe))
                    (_K5624956268_ _rest56278_ _hd56276_)))
                (let () (declare (not safe)) (_else5624756261_)))))))
    (define remv
      (lambda (_el56186_ _lst56188_)
        (let _lp56191_ ((_rest56194_ _lst56188_) (_r56196_ '()))
          (let* ((_rest5619856206_ _rest56194_)
                 (_else5620056214_ (lambda () _lst56188_))
                 (_K5620256221_
                  (lambda (_rest56217_ _hd56218_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el56186_ _hd56218_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56217_ _r56196_))
                        (let ((__tmp62186
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56218_ _r56196_))))
                          (declare (not safe))
                          (_lp56191_ _rest56217_ __tmp62186))))))
            (if (let () (declare (not safe)) (##pair? _rest5619856206_))
                (let ((_hd5620356224_
                       (let () (declare (not safe)) (##car _rest5619856206_)))
                      (_tl5620456226_
                       (let () (declare (not safe)) (##cdr _rest5619856206_))))
                  (let* ((_hd56229_ _hd5620356224_)
                         (_rest56231_ _tl5620456226_))
                    (declare (not safe))
                    (_K5620256221_ _rest56231_ _hd56229_)))
                (let () (declare (not safe)) (_else5620056214_)))))))
    (define remq
      (lambda (_el56139_ _lst56141_)
        (let _lp56144_ ((_rest56147_ _lst56141_) (_r56149_ '()))
          (let* ((_rest5615156159_ _rest56147_)
                 (_else5615356167_ (lambda () _lst56141_))
                 (_K5615556174_
                  (lambda (_rest56170_ _hd56171_)
                    (if (let () (declare (not safe)) (eq? _el56139_ _hd56171_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56170_ _r56149_))
                        (let ((__tmp62187
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56171_ _r56149_))))
                          (declare (not safe))
                          (_lp56144_ _rest56170_ __tmp62187))))))
            (if (let () (declare (not safe)) (##pair? _rest5615156159_))
                (let ((_hd5615656177_
                       (let () (declare (not safe)) (##car _rest5615156159_)))
                      (_tl5615756179_
                       (let () (declare (not safe)) (##cdr _rest5615156159_))))
                  (let* ((_hd56182_ _hd5615656177_)
                         (_rest56184_ _tl5615756179_))
                    (declare (not safe))
                    (_K5615556174_ _rest56184_ _hd56182_)))
                (let () (declare (not safe)) (_else5615356167_)))))))
    (define remf
      (lambda (_proc56098_ _lst56099_)
        (let _lp56101_ ((_rest56103_ _lst56099_) (_r56104_ '()))
          (let* ((_rest5610556113_ _rest56103_)
                 (_else5610756121_ (lambda () _lst56099_))
                 (_K5610956127_
                  (lambda (_rest56124_ _hd56125_)
                    (if (_proc56098_ _hd56125_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56124_ _r56104_))
                        (let ((__tmp62188
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56125_ _r56104_))))
                          (declare (not safe))
                          (_lp56101_ _rest56124_ __tmp62188))))))
            (if (let () (declare (not safe)) (##pair? _rest5610556113_))
                (let ((_hd5611056130_
                       (let () (declare (not safe)) (##car _rest5610556113_)))
                      (_tl5611156132_
                       (let () (declare (not safe)) (##cdr _rest5610556113_))))
                  (let* ((_hd56135_ _hd5611056130_)
                         (_rest56137_ _tl5611156132_))
                    (declare (not safe))
                    (_K5610956127_ _rest56137_ _hd56135_)))
                (let () (declare (not safe)) (_else5610756121_)))))))
    (define 1+ (lambda (_x56096_) (+ _x56096_ '1)))
    (define 1- (lambda (_x56094_) (- _x56094_ '1)))
    (define fx1+ (lambda (_x56092_) (fx+ _x56092_ '1)))
    (define fx1- (lambda (_x56090_) (fx- _x56090_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x56088_)
        (if (let () (declare (not safe)) (fixnum? _x56088_))
            (let () (declare (not safe)) (##fx>= _x56088_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x56086_)
        (if (let () (declare (not safe)) (fixnum? _x56086_))
            (let () (declare (not safe)) (##fx> _x56086_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x56084_) (let () (declare (not safe)) (eq? _x56084_ '0))))
    (define fx<0?
      (lambda (_x56082_)
        (if (let () (declare (not safe)) (fixnum? _x56082_))
            (let () (declare (not safe)) (##fx< _x56082_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x56080_)
        (if (let () (declare (not safe)) (fixnum? _x56080_))
            (let () (declare (not safe)) (##fx<= _x56080_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x56078_)
        (if (let () (declare (not safe)) (symbol? _x56078_))
            (let ((__tmp62189 (uninterned-symbol? _x56078_)))
              (declare (not safe))
              (not __tmp62189))
            '#f)))
    (define display-as-string
      (lambda (_x56050_ _port56051_)
        (if (or (let () (declare (not safe)) (string? _x56050_))
                (let () (declare (not safe)) (symbol? _x56050_))
                (keyword? _x56050_)
                (let () (declare (not safe)) (number? _x56050_))
                (let () (declare (not safe)) (char? _x56050_)))
            (display _x56050_ _port56051_)
            (if (let () (declare (not safe)) (pair? _x56050_))
                (begin
                  (let ((__tmp62190 (car _x56050_)))
                    (declare (not safe))
                    (display-as-string __tmp62190 _port56051_))
                  (let ((__tmp62191 (cdr _x56050_)))
                    (declare (not safe))
                    (display-as-string __tmp62191 _port56051_)))
                (if (let () (declare (not safe)) (vector? _x56050_))
                    (vector-for-each
                     (lambda (_g5606456066_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5606456066_ _port56051_)))
                     _x56050_)
                    (if (or (let () (declare (not safe)) (null? _x56050_))
                            (let ()
                              (declare (not safe))
                              (eq? _x56050_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x56050_))
                            (let () (declare (not safe)) (boolean? _x56050_)))
                        '#!void
                        (error '"cannot convert as string" _x56050_)))))))
    (define as-string__0
      (lambda (_x56038_)
        (if (let () (declare (not safe)) (string? _x56038_))
            _x56038_
            (if (let () (declare (not safe)) (symbol? _x56038_))
                (symbol->string _x56038_)
                (if (keyword? _x56038_)
                    (keyword->string _x56038_)
                    (call-with-output-string
                     '()
                     (lambda (_g5603956041_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x56038_ _g5603956041_)))))))))
    (define as-string__1
      (lambda _args56044_
        (call-with-output-string
         '()
         (lambda (_g5604556047_)
           (let ()
             (declare (not safe))
             (display-as-string _args56044_ _g5604556047_))))))
    (define as-string
      (lambda _g62193_
        (let ((_g62192_ (let () (declare (not safe)) (##length _g62193_))))
          (cond ((let () (declare (not safe)) (##fx= _g62192_ 1))
                 (apply (lambda (_x56038_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x56038_)))
                        _g62193_))
                (#t (apply as-string__1 _g62193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g62193_))))))
    (define make-symbol__0
      (lambda (_x56034_)
        (if (interned-symbol? _x56034_)
            _x56034_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x56034_))))))
    (define make-symbol__1
      (lambda _args56036_ (string->symbol (apply as-string _args56036_))))
    (define make-symbol
      (lambda _g62195_
        (let ((_g62194_ (let () (declare (not safe)) (##length _g62195_))))
          (cond ((let () (declare (not safe)) (##fx= _g62194_ 1))
                 (apply (lambda (_x56034_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x56034_)))
                        _g62195_))
                (#t (apply make-symbol__1 _g62195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g62195_))))))
    (define make-keyword__0
      (lambda (_x56030_)
        (if (interned-keyword? _x56030_)
            _x56030_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x56030_))))))
    (define make-keyword__1
      (lambda _args56032_ (string->keyword (apply as-string _args56032_))))
    (define make-keyword
      (lambda _g62197_
        (let ((_g62196_ (let () (declare (not safe)) (##length _g62197_))))
          (cond ((let () (declare (not safe)) (##fx= _g62196_ 1))
                 (apply (lambda (_x56030_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x56030_)))
                        _g62197_))
                (#t (apply make-keyword__1 _g62197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g62197_))))))
    (define interned-keyword?
      (lambda (_x56028_)
        (if (keyword? _x56028_)
            (let ((__tmp62198 (uninterned-keyword? _x56028_)))
              (declare (not safe))
              (not __tmp62198))
            '#f)))
    (define symbol->keyword
      (lambda (_sym56026_)
        ((if (uninterned-symbol? _sym56026_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym56026_))))
    (define keyword->symbol
      (lambda (_kw56024_)
        ((if (uninterned-keyword? _kw56024_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw56024_))))
    (define bytes->string__%
      (lambda (_bstr56002_ _enc56003_)
        (if (let () (declare (not safe)) (eq? _enc56003_ 'UTF-8))
            (utf8->string _bstr56002_)
            (let* ((_in56005_
                    (open-input-u8vector
                     (let ((__tmp62199
                            (let ((__tmp62200
                                   (let ((__tmp62201
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr56002_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp62201))))
                              (declare (not safe))
                              (cons _enc56003_ __tmp62200))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp62199))))
                   (_len56007_ (u8vector-length _bstr56002_))
                   (_out56009_ (make-string _len56007_))
                   (_n56011_
                    (read-substring _out56009_ '0 _len56007_ _in56005_)))
              (string-shrink! _out56009_ _n56011_)
              _out56009_))))
    (define bytes->string__0
      (lambda (_bstr56017_)
        (let ((_enc56019_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr56017_ _enc56019_))))
    (define bytes->string
      (lambda _g62203_
        (let ((_g62202_ (let () (declare (not safe)) (##length _g62203_))))
          (cond ((let () (declare (not safe)) (##fx= _g62202_ 1))
                 (apply (lambda (_bstr56017_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr56017_)))
                        _g62203_))
                ((let () (declare (not safe)) (##fx= _g62202_ 2))
                 (apply (lambda (_bstr56021_ _enc56022_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr56021_ _enc56022_)))
                        _g62203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g62203_))))))
    (define string->bytes__%
      (lambda (_str55988_ _enc55989_)
        (if (let () (declare (not safe)) (eq? _enc55989_ 'UTF-8))
            (string->utf8 _str55988_)
            (substring->bytes
             _str55988_
             '0
             (string-length _str55988_)
             _enc55989_))))
    (define string->bytes__0
      (lambda (_str55994_)
        (let ((_enc55996_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str55994_ _enc55996_))))
    (define string->bytes
      (lambda _g62205_
        (let ((_g62204_ (let () (declare (not safe)) (##length _g62205_))))
          (cond ((let () (declare (not safe)) (##fx= _g62204_ 1))
                 (apply (lambda (_str55994_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str55994_)))
                        _g62205_))
                ((let () (declare (not safe)) (##fx= _g62204_ 2))
                 (apply (lambda (_str55998_ _enc55999_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str55998_ _enc55999_)))
                        _g62205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g62205_))))))
    (define substring->bytes__%
      (lambda (_str55966_ _start55967_ _end55968_ _enc55969_)
        (if (let () (declare (not safe)) (eq? _enc55969_ 'UTF-8))
            (string->utf8 _str55966_ _start55967_ _end55968_)
            (let ((_out55971_
                   (open-output-u8vector
                    (let ((__tmp62206
                           (let ()
                             (declare (not safe))
                             (cons _enc55969_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp62206)))))
              (write-substring _str55966_ _start55967_ _end55968_ _out55971_)
              (get-output-u8vector _out55971_)))))
    (define substring->bytes__0
      (lambda (_str55976_ _start55977_ _end55978_)
        (let ((_enc55980_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str55976_
           _start55977_
           _end55978_
           _enc55980_))))
    (define substring->bytes
      (lambda _g62208_
        (let ((_g62207_ (let () (declare (not safe)) (##length _g62208_))))
          (cond ((let () (declare (not safe)) (##fx= _g62207_ 3))
                 (apply (lambda (_str55976_ _start55977_ _end55978_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str55976_
                             _start55977_
                             _end55978_)))
                        _g62208_))
                ((let () (declare (not safe)) (##fx= _g62207_ 4))
                 (apply (lambda (_str55982_ _start55983_ _end55984_ _enc55985_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str55982_
                             _start55983_
                             _end55984_
                             _enc55985_)))
                        _g62208_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g62208_))))))
    (define string-empty?
      (lambda (_str55963_)
        (let ((__tmp62209 (string-length _str55963_)))
          (declare (not safe))
          (##fxzero? __tmp62209))))
    (define string-prefix?
      (lambda (_prefix55953_ _str55954_)
        (let ((_str-len55956_ (string-length _str55954_))
              (_prefix-len55957_ (string-length _prefix55953_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len55957_ _str-len55956_))
              (let _lp55959_ ((_i55961_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i55961_ _prefix-len55957_))
                    (if (let ((__tmp62212
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str55954_ _i55961_)))
                              (__tmp62211
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix55953_ _i55961_))))
                          (declare (not safe))
                          (eq? __tmp62212 __tmp62211))
                        (let ((__tmp62210
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i55961_ '1))))
                          (declare (not safe))
                          (_lp55959_ __tmp62210))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str55931_ _char55932_ _start55933_)
        (let ((_len55935_ (string-length _str55931_)))
          (let _lp55937_ ((_k55939_ _start55933_))
            (if (let () (declare (not safe)) (##fx< _k55939_ _len55935_))
                (if (let ((__tmp62214
                           (let ()
                             (declare (not safe))
                             (##string-ref _str55931_ _k55939_))))
                      (declare (not safe))
                      (eq? _char55932_ __tmp62214))
                    _k55939_
                    (let ((__tmp62213
                           (let () (declare (not safe)) (##fx+ _k55939_ '1))))
                      (declare (not safe))
                      (_lp55937_ __tmp62213)))
                '#f)))))
    (define string-index__0
      (lambda (_str55944_ _char55945_)
        (let ((_start55947_ '0))
          (declare (not safe))
          (string-index__% _str55944_ _char55945_ _start55947_))))
    (define string-index
      (lambda _g62216_
        (let ((_g62215_ (let () (declare (not safe)) (##length _g62216_))))
          (cond ((let () (declare (not safe)) (##fx= _g62215_ 2))
                 (apply (lambda (_str55944_ _char55945_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str55944_ _char55945_)))
                        _g62216_))
                ((let () (declare (not safe)) (##fx= _g62215_ 3))
                 (apply (lambda (_str55949_ _char55950_ _start55951_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str55949_
                             _char55950_
                             _start55951_)))
                        _g62216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g62216_))))))
    (define string-rindex__%
      (lambda (_str55902_ _char55903_ _start55904_)
        (let* ((_len55906_ (string-length _str55902_))
               (_start55911_
                (let ((_$e55908_ _start55904_))
                  (if _$e55908_
                      _$e55908_
                      (let () (declare (not safe)) (##fx- _len55906_ '1))))))
          (let _lp55914_ ((_k55916_ _start55911_))
            (if (let () (declare (not safe)) (##fx>= _k55916_ '0))
                (if (let ((__tmp62218
                           (let ()
                             (declare (not safe))
                             (##string-ref _str55902_ _k55916_))))
                      (declare (not safe))
                      (eq? _char55903_ __tmp62218))
                    _k55916_
                    (let ((__tmp62217
                           (let () (declare (not safe)) (##fx- _k55916_ '1))))
                      (declare (not safe))
                      (_lp55914_ __tmp62217)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str55921_ _char55922_)
        (let ((_start55924_ '#f))
          (declare (not safe))
          (string-rindex__% _str55921_ _char55922_ _start55924_))))
    (define string-rindex
      (lambda _g62220_
        (let ((_g62219_ (let () (declare (not safe)) (##length _g62220_))))
          (cond ((let () (declare (not safe)) (##fx= _g62219_ 2))
                 (apply (lambda (_str55921_ _char55922_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str55921_ _char55922_)))
                        _g62220_))
                ((let () (declare (not safe)) (##fx= _g62219_ 3))
                 (apply (lambda (_str55926_ _char55927_ _start55928_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str55926_
                             _char55927_
                             _start55928_)))
                        _g62220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g62220_))))))
    (define string-split
      (lambda (_str55886_ _char55887_)
        (let ((_len55889_ (string-length _str55886_)))
          (let _lp55891_ ((_start55893_ '0) (_r55894_ '()))
            (let ((_$e55896_
                   (let ()
                     (declare (not safe))
                     (string-index__% _str55886_ _char55887_ _start55893_))))
              (if _$e55896_
                  ((lambda (_end55899_)
                     (let ((__tmp62224
                            (let ()
                              (declare (not safe))
                              (##fx+ _end55899_ '1)))
                           (__tmp62222
                            (let ((__tmp62223
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str55886_
                                      _start55893_
                                      _end55899_))))
                              (declare (not safe))
                              (cons __tmp62223 _r55894_))))
                       (declare (not safe))
                       (_lp55891_ __tmp62224 __tmp62222)))
                   _$e55896_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start55893_ _len55889_))
                      (let ((__tmp62221
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str55886_
                                      _start55893_
                                      _len55889_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp62221 _r55894_))
                      (reverse _r55894_))))))))
    (define string-join
      (lambda (_strs55791_ _join55792_)
        (letrec ((_join-length55794_
                  (lambda (_strs55845_ _jlen55846_)
                    (let _lp55848_ ((_rest55850_ _strs55845_) (_len55851_ '0))
                      (let* ((_rest5585255860_ _rest55850_)
                             (_else5585455868_ (lambda () '0))
                             (_K5585655874_
                              (lambda (_rest55871_ _hd55872_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd55872_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest55871_))
                                        (let ((__tmp62226
                                               (let ((__tmp62227
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd55872_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp62227
                                                        _jlen55846_
                                                        _len55851_))))
                                          (declare (not safe))
                                          (_lp55848_ _rest55871_ __tmp62226))
                                        (let ((__tmp62225
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd55872_))))
                                          (declare (not safe))
                                          (##fx+ __tmp62225 _len55851_)))
                                    (error '"expected string" _hd55872_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5585255860_))
                            (let ((_hd5585755877_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5585255860_)))
                                  (_tl5585855879_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5585255860_))))
                              (let* ((_hd55882_ _hd5585755877_)
                                     (_rest55884_ _tl5585855879_))
                                (declare (not safe))
                                (_K5585655874_ _rest55884_ _hd55882_)))
                            (let ()
                              (declare (not safe))
                              (_else5585455868_))))))))
          (let* ((_join55796_
                  (if (let () (declare (not safe)) (char? _join55792_))
                      (string _join55792_)
                      (if (let () (declare (not safe)) (string? _join55792_))
                          _join55792_
                          (error '"expected string or char" _join55792_))))
                 (_jlen55798_
                  (let () (declare (not safe)) (##string-length _join55796_)))
                 (_olen55800_
                  (let ()
                    (declare (not safe))
                    (_join-length55794_ _strs55791_ _jlen55798_)))
                 (_ostr55802_ (make-string _olen55800_)))
            (let _lp55805_ ((_rest55807_ _strs55791_) (_k55808_ '0))
              (let* ((_rest5580955817_ _rest55807_)
                     (_else5581155825_ (lambda () '""))
                     (_K5581355833_
                      (lambda (_rest55828_ _hd55829_)
                        (let ((_hdlen55831_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd55829_))))
                          (if (let () (declare (not safe)) (pair? _rest55828_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd55829_
                                   '0
                                   _hdlen55831_
                                   _ostr55802_
                                   _k55808_))
                                (let ((__tmp62228
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k55808_ _hdlen55831_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join55796_
                                   '0
                                   _jlen55798_
                                   _ostr55802_
                                   __tmp62228))
                                (let ((__tmp62229
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k55808_
                                                _hdlen55831_
                                                _jlen55798_))))
                                  (declare (not safe))
                                  (_lp55805_ _rest55828_ __tmp62229)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd55829_
                                   '0
                                   _hdlen55831_
                                   _ostr55802_
                                   _k55808_))
                                _ostr55802_))))))
                (if (let () (declare (not safe)) (##pair? _rest5580955817_))
                    (let ((_hd5581455836_
                           (let ()
                             (declare (not safe))
                             (##car _rest5580955817_)))
                          (_tl5581555838_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5580955817_))))
                      (let* ((_hd55841_ _hd5581455836_)
                             (_rest55843_ _tl5581555838_))
                        (declare (not safe))
                        (_K5581355833_ _rest55843_ _hd55841_)))
                    (let () (declare (not safe)) (_else5581155825_)))))))))
    (define read-u8vector
      (lambda (_bytes55788_ _port55789_)
        (read-subu8vector
         _bytes55788_
         '0
         (u8vector-length _bytes55788_)
         _port55789_)))
    (define write-u8vector
      (lambda (_bytes55785_ _port55786_)
        (write-subu8vector
         _bytes55785_
         '0
         (u8vector-length _bytes55785_)
         _port55786_)))
    (define read-string
      (lambda (_str55782_ _port55783_)
        (read-substring _str55782_ '0 (string-length _str55782_) _port55783_)))
    (define write-string
      (lambda (_str55779_ _port55780_)
        (write-substring
         _str55779_
         '0
         (string-length _str55779_)
         _port55780_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag55748_
               _dbg-exprs55749_
               _dbg-thunks55750_
               _expr55751_
               _thunk55752_)
        (letrec ((_o55754_ (current-output-port))
                 (_e55755_ (current-error-port))
                 (_p55756_ (DBG-printer))
                 (_f55757_
                  (lambda () (force-output _o55754_) (force-output _e55755_)))
                 (_d55758_ (lambda (_x55765_) (display _x55765_ _e55755_)))
                 (_w55759_ (lambda (_x55767_) (_p55756_ _x55767_ _e55755_)))
                 (_n55760_ (lambda () (newline _e55755_)))
                 (_v55761_
                  (lambda (_l55770_)
                    (for-each
                     (lambda (_x55772_)
                       (let () (declare (not safe)) (_d55758_ '" "))
                       (let () (declare (not safe)) (_w55759_ _x55772_)))
                     _l55770_)
                    (let () (declare (not safe)) (_n55760_))))
                 (_x55762_
                  (lambda (_expr55774_ _thunk55775_)
                    (let () (declare (not safe)) (_f55757_))
                    (let () (declare (not safe)) (_d55758_ '"  "))
                    (let () (declare (not safe)) (_w55759_ _expr55774_))
                    (let () (declare (not safe)) (_d55758_ '" =>"))
                    (call-with-values
                     _thunk55775_
                     (lambda _x55777_
                       (let () (declare (not safe)) (_v55761_ _x55777_))
                       (let () (declare (not safe)) (_f55757_))
                       (apply values _x55777_))))))
          (if _tag55748_
              (begin
                (if (let () (declare (not safe)) (eq? _tag55748_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f55757_))
                      (let () (declare (not safe)) (_d55758_ _tag55748_))
                      (let () (declare (not safe)) (_n55760_))))
                (for-each _x55762_ _dbg-exprs55749_ _dbg-thunks55750_)
                (if _thunk55752_
                    (let ()
                      (declare (not safe))
                      (_x55762_ _expr55751_ _thunk55752_))
                    '#!void))
              (if _thunk55752_ (_thunk55752_) '#!void)))))))
