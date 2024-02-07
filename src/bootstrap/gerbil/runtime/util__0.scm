(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1707346614)
  (begin
    (define displayln
      (lambda _args58639_
        (let _lp58641_ ((_rest58643_ _args58639_))
          (let* ((_rest5864458652_ _rest58643_)
                 (_else5864658660_ (lambda () (newline)))
                 (_K5864858666_
                  (lambda (_rest58663_ _hd58664_)
                    (display _hd58664_)
                    (let () (declare (not safe)) (_lp58641_ _rest58663_)))))
            (if (let () (declare (not safe)) (##pair? _rest5864458652_))
                (let ((_hd5864958669_
                       (let () (declare (not safe)) (##car _rest5864458652_)))
                      (_tl5865058671_
                       (let () (declare (not safe)) (##cdr _rest5864458652_))))
                  (let* ((_hd58674_ _hd5864958669_)
                         (_rest58676_ _tl5865058671_))
                    (declare (not safe))
                    (_K5864858666_ _rest58676_ _hd58674_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args58637_ (for-each display _args58637_)))
    (define file-newer?
      (lambda (_file158630_ _file258631_)
        (letrec ((_modification-time58633_
                  (lambda (_file58635_)
                    (let ((__tmp63258
                           (file-info-last-modification-time
                            (file-info _file58635_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp63258)))))
          (let ((__tmp63260
                 (let ()
                   (declare (not safe))
                   (_modification-time58633_ _file158630_)))
                (__tmp63259
                 (let ()
                   (declare (not safe))
                   (_modification-time58633_ _file258631_))))
            (declare (not safe))
            (##fl> __tmp63260 __tmp63259)))))
    (define create-directory*__%
      (lambda (_dir58604_ _perms58605_)
        (letrec ((_create158607_
                  (lambda (_path58618_)
                    (if (file-exists? _path58618_)
                        (if (let ((__tmp63261 (file-type _path58618_)))
                              (declare (not safe))
                              (eq? __tmp63261 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path58618_))
                        (if _perms58605_
                            (create-directory
                             (list 'path:
                                   _path58618_
                                   'permissions:
                                   _perms58605_))
                            (create-directory _path58618_))))))
          (if (file-exists? _dir58604_)
              '#!void
              (let _lp58609_ ((_start58611_ '0))
                (let ((_$e58613_
                       (let ()
                         (declare (not safe))
                         (string-index _dir58604_ '#\/ _start58611_))))
                  (if _$e58613_
                      ((lambda (_x58616_)
                         (if (let () (declare (not safe)) (##fx> _x58616_ '0))
                             (let ((__tmp63262
                                    (substring _dir58604_ '0 _x58616_)))
                               (declare (not safe))
                               (_create158607_ __tmp63262))
                             '#!void)
                         (let ((__tmp63263
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x58616_ '1))))
                           (declare (not safe))
                           (_lp58609_ __tmp63263)))
                       _$e58613_)
                      (let ()
                        (declare (not safe))
                        (_create158607_ _dir58604_)))))))))
    (define create-directory*__0
      (lambda (_dir58623_)
        (let ((_perms58625_ '493))
          (declare (not safe))
          (create-directory*__% _dir58623_ _perms58625_))))
    (define create-directory*
      (lambda _g63265_
        (let ((_g63264_ (let () (declare (not safe)) (##length _g63265_))))
          (cond ((let () (declare (not safe)) (##fx= _g63264_ 1))
                 (apply (lambda (_dir58623_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir58623_)))
                        _g63265_))
                ((let () (declare (not safe)) (##fx= _g63264_ 2))
                 (apply (lambda (_dir58627_ _perms58628_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir58627_ _perms58628_)))
                        _g63265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g63265_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g63266_ '#t))
    (define true?
      (lambda (_obj58600_) (let () (declare (not safe)) (eq? _obj58600_ '#t))))
    (define false (lambda _g63267_ '#f))
    (define void (lambda _g63268_ '#!void))
    (define void?
      (lambda (_obj58596_)
        (let () (declare (not safe)) (eq? _obj58596_ '#!void))))
    (define eof-object (lambda _g63269_ '#!eof))
    (define identity (lambda (_obj58593_) _obj58593_))
    (define dssl-object?
      (lambda (_obj58591_)
        (if (memq _obj58591_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj58589_)
        (let () (declare (not safe)) (eq? _obj58589_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj58587_)
        (let () (declare (not safe)) (eq? _obj58587_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj58585_)
        (let () (declare (not safe)) (eq? _obj58585_ '#!optional))))
    (define immediate?
      (lambda (_obj58581_)
        (let* ((_t58583_ (let () (declare (not safe)) (##type _obj58581_)))
               (__tmp63270
                (let () (declare (not safe)) (##fxand _t58583_ '1))))
          (declare (not safe))
          (##fxzero? __tmp63270))))
    (define nonnegative-fixnum?
      (lambda (_obj58579_)
        (if (fixnum? _obj58579_)
            (let ((__tmp63271 (fxnegative? _obj58579_)))
              (declare (not safe))
              (not __tmp63271))
            '#f)))
    (define values-count
      (lambda (_obj58577_)
        (if (let () (declare (not safe)) (##values? _obj58577_))
            (let () (declare (not safe)) (##vector-length _obj58577_))
            '1)))
    (define values-ref
      (lambda (_obj58574_ _k58575_)
        (if (let () (declare (not safe)) (##values? _obj58574_))
            (let () (declare (not safe)) (##vector-ref _obj58574_ _k58575_))
            _obj58574_)))
    (define values->list
      (lambda (_obj58572_)
        (if (let () (declare (not safe)) (##values? _obj58572_))
            (let () (declare (not safe)) (##vector->list _obj58572_))
            (list _obj58572_))))
    (define subvector->list__%
      (lambda (_obj58557_ _start58558_)
        (let ((_lst58560_
               (let () (declare (not safe)) (##vector->list _obj58557_))))
          (list-tail _lst58560_ _start58558_))))
    (define subvector->list__0
      (lambda (_obj58565_)
        (let ((_start58567_ '0))
          (declare (not safe))
          (subvector->list__% _obj58565_ _start58567_))))
    (define subvector->list
      (lambda _g63273_
        (let ((_g63272_ (let () (declare (not safe)) (##length _g63273_))))
          (cond ((let () (declare (not safe)) (##fx= _g63272_ 1))
                 (apply (lambda (_obj58565_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj58565_)))
                        _g63273_))
                ((let () (declare (not safe)) (##fx= _g63272_ 2))
                 (apply (lambda (_obj58569_ _start58570_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj58569_ _start58570_)))
                        _g63273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g63273_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args58554_ (apply make-table 'test: eq? _args58554_)))
    (define make-hash-table-eqv
      (lambda _args58552_ (apply make-table 'test: eqv? _args58552_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst58549_ . _args58550_)
        (apply list->table _lst58549_ 'test: eq? _args58550_)))
    (define list->hash-table-eqv
      (lambda (_lst58546_ . _args58547_)
        (apply list->table _lst58546_ 'test: eqv? _args58547_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht58543_ _k58544_) (table-ref _ht58543_ _k58544_ '#f)))
    (define hash-put!
      (lambda (_ht58539_ _k58540_ _v58541_)
        (table-set! _ht58539_ _k58540_ _v58541_)))
    (define hash-update!__%
      (lambda (_ht58518_ _k58519_ _update58520_ _default58521_)
        (let* ((_value58523_
                (let ()
                  (declare (not safe))
                  (table-ref _ht58518_ _k58519_ _default58521_)))
               (__tmp63274 (_update58520_ _value58523_)))
          (declare (not safe))
          (table-set! _ht58518_ _k58519_ __tmp63274))))
    (define hash-update!__0
      (lambda (_ht58528_ _k58529_ _update58530_)
        (let ((_default58532_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht58528_ _k58529_ _update58530_ _default58532_))))
    (define hash-update!
      (lambda _g63276_
        (let ((_g63275_ (let () (declare (not safe)) (##length _g63276_))))
          (cond ((let () (declare (not safe)) (##fx= _g63275_ 3))
                 (apply (lambda (_ht58528_ _k58529_ _update58530_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _ht58528_
                             _k58529_
                             _update58530_)))
                        _g63276_))
                ((let () (declare (not safe)) (##fx= _g63275_ 4))
                 (apply (lambda (_ht58534_
                                 _k58535_
                                 _update58536_
                                 _default58537_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht58534_
                             _k58535_
                             _update58536_
                             _default58537_)))
                        _g63276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g63276_))))))
    (define hash-remove!
      (lambda (_ht58514_ _k58515_) (table-set! _ht58514_ _k58515_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht58512_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht58512_))))
    (define plist->hash-table__%
      (lambda (_plst58447_ _ht58448_)
        (let _lp58450_ ((_rest58452_ _plst58447_))
          (let* ((_rest5845358464_ _rest58452_)
                 (_E5845658468_
                  (lambda () (error '"No clause matching" _rest5845358464_))))
            (let ((_K5845858483_
                   (lambda (_rest58479_ _v58480_ _k58481_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht58448_ _k58481_ _v58480_))
                     (let () (declare (not safe)) (_lp58450_ _rest58479_))))
                  (_K5845758473_ (lambda () _ht58448_)))
              (let ((_try-match5845558476_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest5845358464_ '()))
                           (let () (declare (not safe)) (_K5845758473_))
                           (let () (declare (not safe)) (_E5845658468_))))))
                (if (let () (declare (not safe)) (##pair? _rest5845358464_))
                    (let ((_tl5846058488_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5845358464_)))
                          (_hd5845958486_
                           (let ()
                             (declare (not safe))
                             (##car _rest5845358464_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5846058488_))
                          (let ((_tl5846258495_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5846058488_)))
                                (_hd5846158493_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5846058488_))))
                            (let ((_k58491_ _hd5845958486_)
                                  (_v58498_ _hd5846158493_)
                                  (_rest58500_ _tl5846258495_))
                              (let ()
                                (declare (not safe))
                                (_K5845858483_
                                 _rest58500_
                                 _v58498_
                                 _k58491_))))
                          (let ()
                            (declare (not safe))
                            (_try-match5845558476_))))
                    (let ()
                      (declare (not safe))
                      (_try-match5845558476_)))))))))
    (define plist->hash-table__0
      (lambda (_plst58505_)
        (let ((_ht58507_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst58505_ _ht58507_))))
    (define plist->hash-table
      (lambda _g63278_
        (let ((_g63277_ (let () (declare (not safe)) (##length _g63278_))))
          (cond ((let () (declare (not safe)) (##fx= _g63277_ 1))
                 (apply (lambda (_plst58505_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst58505_)))
                        _g63278_))
                ((let () (declare (not safe)) (##fx= _g63277_ 2))
                 (apply (lambda (_plst58509_ _ht58510_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst58509_ _ht58510_)))
                        _g63278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g63278_))))))
    (define plist->hash-table-eq
      (lambda (_plst58444_)
        (let ((__tmp63279
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst58444_ __tmp63279))))
    (define plist->hash-table-eqv
      (lambda (_plst58442_)
        (let ((__tmp63280
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst58442_ __tmp63280))))
    (define hash-key?
      (lambda (_ht58439_ _k58440_)
        (let ((__tmp63281
               (let ((__tmp63282
                      (let ()
                        (declare (not safe))
                        (table-ref _ht58439_ _k58440_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp63282 absent-value))))
          (declare (not safe))
          (not __tmp63281))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun58432_ _ht58433_)
        (let ((__tmp63283
               (lambda (_k58435_ _v58436_ _r58437_)
                 (let ((__tmp63284 (_fun58432_ _k58435_ _v58436_)))
                   (declare (not safe))
                   (cons __tmp63284 _r58437_)))))
          (declare (not safe))
          (hash-fold __tmp63283 '() _ht58433_))))
    (define hash-fold
      (lambda (_fun58423_ _iv58424_ _ht58425_)
        (let ((_ret58427_ _iv58424_))
          (let ((__tmp63285
                 (lambda (_k58429_ _v58430_)
                   (set! _ret58427_
                         (_fun58423_ _k58429_ _v58430_ _ret58427_)))))
            (declare (not safe))
            (table-for-each __tmp63285 _ht58425_))
          _ret58427_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht58418_)
        (let ((__tmp63286 (lambda (_k58420_ _v58421_) _k58420_)))
          (declare (not safe))
          (hash-map __tmp63286 _ht58418_))))
    (define hash-values
      (lambda (_ht58413_)
        (let ((__tmp63287 (lambda (_k58415_ _v58416_) _v58416_)))
          (declare (not safe))
          (hash-map __tmp63287 _ht58413_))))
    (define hash-copy
      (lambda (_hd58408_ . _rest58409_)
        (let ((_hd58411_ (table-copy _hd58408_)))
          (if (let () (declare (not safe)) (null? _rest58409_))
              _hd58411_
              (apply hash-copy! _hd58411_ _rest58409_)))))
    (define hash-copy!
      (lambda (_hd58403_ . _rest58404_)
        (for-each
         (lambda (_r58406_) (table-merge! _hd58403_ _r58406_))
         _rest58404_)
        _hd58403_))
    (define hash-merge
      (lambda (_hd58397_ . _rest58398_)
        (let ((__tmp63288
               (lambda (_tab58400_ _r58401_)
                 (table-merge _r58401_ _tab58400_))))
          (declare (not safe))
          (foldl1 __tmp63288 _hd58397_ _rest58398_))))
    (define hash-merge!
      (lambda (_hd58391_ . _rest58392_)
        (let ((__tmp63289
               (lambda (_tab58394_ _r58395_)
                 (table-merge! _r58395_ _tab58394_))))
          (declare (not safe))
          (foldl1 __tmp63289 _hd58391_ _rest58392_))))
    (define hash-clear!__%
      (lambda (_ht58376_ _size58377_)
        (let ((_gcht58379_
               (let () (declare (not safe)) (##vector-ref _ht58376_ '5))))
          (if (let ((__tmp63290 (fixnum? _gcht58379_)))
                (declare (not safe))
                (not __tmp63290))
              (let ()
                (declare (not safe))
                (##vector-set! _ht58376_ '5 _size58377_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht58384_)
        (let ((_size58386_ '0))
          (declare (not safe))
          (hash-clear!__% _ht58384_ _size58386_))))
    (define hash-clear!
      (lambda _g63292_
        (let ((_g63291_ (let () (declare (not safe)) (##length _g63292_))))
          (cond ((let () (declare (not safe)) (##fx= _g63291_ 1))
                 (apply (lambda (_ht58384_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht58384_)))
                        _g63292_))
                ((let () (declare (not safe)) (##fx= _g63291_ 2))
                 (apply (lambda (_ht58388_ _size58389_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht58388_ _size58389_)))
                        _g63292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g63292_))))))
    (define make-list__%
      (lambda (_k58357_ _val58358_)
        (if (fixnum? _k58357_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k58357_))
        (let _lp58360_ ((_n58362_ '0) (_r58363_ '()))
          (if (let () (declare (not safe)) (##fx< _n58362_ _k58357_))
              (let ((__tmp63294
                     (let () (declare (not safe)) (##fx+ _n58362_ '1)))
                    (__tmp63293
                     (let () (declare (not safe)) (cons _val58358_ _r58363_))))
                (declare (not safe))
                (_lp58360_ __tmp63294 __tmp63293))
              _r58363_))))
    (define make-list__0
      (lambda (_k58368_)
        (let ((_val58370_ '#f))
          (declare (not safe))
          (make-list__% _k58368_ _val58370_))))
    (define make-list
      (lambda _g63296_
        (let ((_g63295_ (let () (declare (not safe)) (##length _g63296_))))
          (cond ((let () (declare (not safe)) (##fx= _g63295_ 1))
                 (apply (lambda (_k58368_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k58368_)))
                        _g63296_))
                ((let () (declare (not safe)) (##fx= _g63295_ 2))
                 (apply (lambda (_k58372_ _val58373_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k58372_ _val58373_)))
                        _g63296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g63296_))))))
    (define cons*
      (lambda (_x58347_ _y58348_ . _rest58349_)
        (letrec ((_recur58351_
                  (lambda (_x58353_ _rest58354_)
                    (if (let () (declare (not safe)) (pair? _rest58354_))
                        (let ((__tmp63297
                               (let ((__tmp63299
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest58354_)))
                                     (__tmp63298
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest58354_))))
                                 (declare (not safe))
                                 (_recur58351_ __tmp63299 __tmp63298))))
                          (declare (not safe))
                          (cons _x58353_ __tmp63297))
                        _x58353_))))
          (let ((__tmp63300
                 (let ()
                   (declare (not safe))
                   (_recur58351_ _y58348_ _rest58349_))))
            (declare (not safe))
            (cons _x58347_ __tmp63300)))))
    (define foldl1
      (lambda (_f58305_ _iv58306_ _lst58307_)
        (let _lp58309_ ((_rest58311_ _lst58307_) (_r58312_ _iv58306_))
          (let* ((_rest5831358321_ _rest58311_)
                 (_else5831558329_ (lambda () _r58312_))
                 (_K5831758335_
                  (lambda (_rest58332_ _x58333_)
                    (let ((__tmp63301 (_f58305_ _x58333_ _r58312_)))
                      (declare (not safe))
                      (_lp58309_ _rest58332_ __tmp63301)))))
            (if (let () (declare (not safe)) (##pair? _rest5831358321_))
                (let ((_hd5831858338_
                       (let () (declare (not safe)) (##car _rest5831358321_)))
                      (_tl5831958340_
                       (let () (declare (not safe)) (##cdr _rest5831358321_))))
                  (let* ((_x58343_ _hd5831858338_)
                         (_rest58345_ _tl5831958340_))
                    (declare (not safe))
                    (_K5831758335_ _rest58345_ _x58343_)))
                (let () (declare (not safe)) (_else5831558329_)))))))
    (define foldl2
      (lambda (_f58228_ _iv58229_ _lst158230_ _lst258231_)
        (let _lp58233_ ((_rest158235_ _lst158230_)
                        (_rest258236_ _lst258231_)
                        (_r58237_ _iv58229_))
          (let* ((_rest15823858246_ _rest158235_)
                 (_else5824058254_ (lambda () _r58237_))
                 (_K5824258293_
                  (lambda (_rest158257_ _x158258_)
                    (let* ((_rest25825958267_ _rest258236_)
                           (_else5826158275_ (lambda () _r58237_))
                           (_K5826358281_
                            (lambda (_rest258278_ _x258279_)
                              (let ((__tmp63302
                                     (_f58228_ _x158258_ _x258279_ _r58237_)))
                                (declare (not safe))
                                (_lp58233_
                                 _rest158257_
                                 _rest258278_
                                 __tmp63302)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25825958267_))
                          (let ((_hd5826458284_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25825958267_)))
                                (_tl5826558286_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25825958267_))))
                            (let* ((_x258289_ _hd5826458284_)
                                   (_rest258291_ _tl5826558286_))
                              (declare (not safe))
                              (_K5826358281_ _rest258291_ _x258289_)))
                          (let () (declare (not safe)) (_else5826158275_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15823858246_))
                (let ((_hd5824358296_
                       (let () (declare (not safe)) (##car _rest15823858246_)))
                      (_tl5824458298_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15823858246_))))
                  (let* ((_x158301_ _hd5824358296_)
                         (_rest158303_ _tl5824458298_))
                    (declare (not safe))
                    (_K5824258293_ _rest158303_ _x158301_)))
                (let () (declare (not safe)) (_else5824058254_)))))))
    (define foldl
      (lambda _g63304_
        (let ((_g63303_ (let () (declare (not safe)) (##length _g63304_))))
          (cond ((let () (declare (not safe)) (##fx= _g63303_ 3))
                 (apply (lambda (_f58213_ _iv58214_ _lst58215_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f58213_ _iv58214_ _lst58215_)))
                        _g63304_))
                ((let () (declare (not safe)) (##fx= _g63303_ 4))
                 (apply (lambda (_f58217_ _iv58218_ _lst158219_ _lst258220_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f58217_
                                    _iv58218_
                                    _lst158219_
                                    _lst258220_)))
                        _g63304_))
                ((let () (declare (not safe)) (##fx>= _g63303_ 4))
                 (apply foldl* _g63304_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g63304_))))))
    (define foldl*
      (lambda (_f58201_ _iv58202_ . _rest58203_)
        (let _recur58205_ ((_iv58207_ _iv58202_) (_rest58208_ _rest58203_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58208_))
              (let ((__tmp63306
                     (apply _f58201_
                            (let ((__tmp63308
                                   (lambda (_xs58210_ _r58211_)
                                     (let ((__tmp63309 (car _xs58210_)))
                                       (declare (not safe))
                                       (cons __tmp63309 _r58211_))))
                                  (__tmp63307 (list _iv58207_)))
                              (declare (not safe))
                              (foldr1 __tmp63308 __tmp63307 _rest58208_))))
                    (__tmp63305 (map cdr _rest58208_)))
                (declare (not safe))
                (_recur58205_ __tmp63306 __tmp63305))
              _iv58207_))))
    (define foldr1
      (lambda (_f58160_ _iv58161_ _lst58162_)
        (let _recur58164_ ((_rest58166_ _lst58162_))
          (let* ((_rest5816758175_ _rest58166_)
                 (_else5816958183_ (lambda () _iv58161_))
                 (_K5817158189_
                  (lambda (_rest58186_ _x58187_)
                    (_f58160_
                     _x58187_
                     (let ()
                       (declare (not safe))
                       (_recur58164_ _rest58186_))))))
            (if (let () (declare (not safe)) (##pair? _rest5816758175_))
                (let ((_hd5817258192_
                       (let () (declare (not safe)) (##car _rest5816758175_)))
                      (_tl5817358194_
                       (let () (declare (not safe)) (##cdr _rest5816758175_))))
                  (let* ((_x58197_ _hd5817258192_)
                         (_rest58199_ _tl5817358194_))
                    (declare (not safe))
                    (_K5817158189_ _rest58199_ _x58197_)))
                (let () (declare (not safe)) (_else5816958183_)))))))
    (define foldr2
      (lambda (_f58084_ _iv58085_ _lst158086_ _lst258087_)
        (let _recur58089_ ((_rest158091_ _lst158086_)
                           (_rest258092_ _lst258087_))
          (let* ((_rest15809358101_ _rest158091_)
                 (_else5809558109_ (lambda () _iv58085_))
                 (_K5809758148_
                  (lambda (_rest158112_ _x158113_)
                    (let* ((_rest25811458122_ _rest258092_)
                           (_else5811658130_ (lambda () _iv58085_))
                           (_K5811858136_
                            (lambda (_rest258133_ _x258134_)
                              (_f58084_
                               _x158113_
                               _x258134_
                               (let ()
                                 (declare (not safe))
                                 (_recur58089_ _rest158112_ _rest258133_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25811458122_))
                          (let ((_hd5811958139_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25811458122_)))
                                (_tl5812058141_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25811458122_))))
                            (let* ((_x258144_ _hd5811958139_)
                                   (_rest258146_ _tl5812058141_))
                              (declare (not safe))
                              (_K5811858136_ _rest258146_ _x258144_)))
                          (let () (declare (not safe)) (_else5811658130_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15809358101_))
                (let ((_hd5809858151_
                       (let () (declare (not safe)) (##car _rest15809358101_)))
                      (_tl5809958153_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15809358101_))))
                  (let* ((_x158156_ _hd5809858151_)
                         (_rest158158_ _tl5809958153_))
                    (declare (not safe))
                    (_K5809758148_ _rest158158_ _x158156_)))
                (let () (declare (not safe)) (_else5809558109_)))))))
    (define foldr
      (lambda _g63311_
        (let ((_g63310_ (let () (declare (not safe)) (##length _g63311_))))
          (cond ((let () (declare (not safe)) (##fx= _g63310_ 3))
                 (apply (lambda (_f58069_ _iv58070_ _lst58071_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f58069_ _iv58070_ _lst58071_)))
                        _g63311_))
                ((let () (declare (not safe)) (##fx= _g63310_ 4))
                 (apply (lambda (_f58073_ _iv58074_ _lst158075_ _lst258076_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f58073_
                                    _iv58074_
                                    _lst158075_
                                    _lst258076_)))
                        _g63311_))
                ((let () (declare (not safe)) (##fx>= _g63310_ 4))
                 (apply foldr* _g63311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g63311_))))))
    (define foldr*
      (lambda (_f58058_ _iv58059_ . _rest58060_)
        (let _recur58062_ ((_rest58064_ _rest58060_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58064_))
              (apply _f58058_
                     (let ((__tmp63314
                            (lambda (_xs58066_ _r58067_)
                              (let ((__tmp63315 (car _xs58066_)))
                                (declare (not safe))
                                (cons __tmp63315 _r58067_))))
                           (__tmp63312
                            (list (let ((__tmp63313 (map cdr _rest58064_)))
                                    (declare (not safe))
                                    (_recur58062_ __tmp63313)))))
                       (declare (not safe))
                       (foldr1 __tmp63314 __tmp63312 _rest58064_)))
              _iv58059_))))
    (define remove-nulls!
      (lambda (_l57945_)
        (let* ((_l5794657959_ _l57945_)
               (_E5795057963_
                (lambda () (error '"No clause matching" _l5794657959_))))
          (let ((_K5795558048_
                 (lambda (_r58046_)
                   (let () (declare (not safe)) (remove-nulls! _r58046_))))
                (_K5795258035_
                 (lambda (_r57975_)
                   (let _loop57977_ ((_l57979_ _l57945_) (_r57980_ _r57975_))
                     (let* ((_r5798157994_ _r57980_)
                            (_E5798557998_
                             (lambda ()
                               (error '"No clause matching" _r5798157994_))))
                       (let ((_K5799058025_
                              (lambda (_rr58023_)
                                (set-cdr!
                                 _l57979_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr58023_)))))
                             (_K5798758012_
                              (lambda (_rr58010_)
                                (let ()
                                  (declare (not safe))
                                  (_loop57977_ _r57980_ _rr58010_))))
                             (_K5798658003_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5798157994_))
                             (let ((_tl5799258030_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5798157994_)))
                                   (_hd5799158028_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5798157994_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5799158028_))
                                   (let ((_rr58033_ _tl5799258030_))
                                     (declare (not safe))
                                     (_K5799058025_ _rr58033_))
                                   (let ((_rr58018_ _tl5799258030_))
                                     (declare (not safe))
                                     (_K5798758012_ _rr58018_))))
                             '#!void))))
                   _l57945_))
                (_K5795157968_ (lambda () _l57945_)))
            (if (let () (declare (not safe)) (##pair? _l5794657959_))
                (let ((_tl5795758053_
                       (let () (declare (not safe)) (##cdr _l5794657959_)))
                      (_hd5795658051_
                       (let () (declare (not safe)) (##car _l5794657959_))))
                  (if (let () (declare (not safe)) (##null? _hd5795658051_))
                      (let ((_r58056_ _tl5795758053_))
                        (declare (not safe))
                        (remove-nulls! _r58056_))
                      (let ((_r58041_ _tl5795758053_))
                        (declare (not safe))
                        (_K5795258035_ _r58041_))))
                (let () (declare (not safe)) (_K5795157968_)))))))
    (define append1!
      (lambda (_l57940_ _x57941_)
        (let ((_l257943_ (let () (declare (not safe)) (cons _x57941_ '()))))
          (if (let () (declare (not safe)) (pair? _l57940_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l57940_))
               _l257943_)
              _l257943_))))
    (define append-reverse
      (lambda (_rev-head57937_ _tail57938_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail57938_ _rev-head57937_))))
    (define andmap1
      (lambda (_f57897_ _lst57898_)
        (let _lp57900_ ((_rest57902_ _lst57898_))
          (let* ((_rest5790357911_ _rest57902_)
                 (_else5790557919_ (lambda () '#t))
                 (_K5790757925_
                  (lambda (_rest57922_ _x57923_)
                    (if (_f57897_ _x57923_)
                        (let () (declare (not safe)) (_lp57900_ _rest57922_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5790357911_))
                (let ((_hd5790857928_
                       (let () (declare (not safe)) (##car _rest5790357911_)))
                      (_tl5790957930_
                       (let () (declare (not safe)) (##cdr _rest5790357911_))))
                  (let* ((_x57933_ _hd5790857928_)
                         (_rest57935_ _tl5790957930_))
                    (declare (not safe))
                    (_K5790757925_ _rest57935_ _x57933_)))
                (let () (declare (not safe)) (_else5790557919_)))))))
    (define andmap2
      (lambda (_f57822_ _lst157823_ _lst257824_)
        (let _lp57826_ ((_rest157828_ _lst157823_) (_rest257829_ _lst257824_))
          (let* ((_rest15783057838_ _rest157828_)
                 (_else5783257846_ (lambda () '#t))
                 (_K5783457885_
                  (lambda (_rest157849_ _x157850_)
                    (let* ((_rest25785157859_ _rest257829_)
                           (_else5785357867_ (lambda () '#t))
                           (_K5785557873_
                            (lambda (_rest257870_ _x257871_)
                              (if (_f57822_ _x157850_ _x257871_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp57826_ _rest157849_ _rest257870_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25785157859_))
                          (let ((_hd5785657876_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25785157859_)))
                                (_tl5785757878_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25785157859_))))
                            (let* ((_x257881_ _hd5785657876_)
                                   (_rest257883_ _tl5785757878_))
                              (declare (not safe))
                              (_K5785557873_ _rest257883_ _x257881_)))
                          (let () (declare (not safe)) (_else5785357867_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15783057838_))
                (let ((_hd5783557888_
                       (let () (declare (not safe)) (##car _rest15783057838_)))
                      (_tl5783657890_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15783057838_))))
                  (let* ((_x157893_ _hd5783557888_)
                         (_rest157895_ _tl5783657890_))
                    (declare (not safe))
                    (_K5783457885_ _rest157895_ _x157893_)))
                (let () (declare (not safe)) (_else5783257846_)))))))
    (define andmap
      (lambda _g63317_
        (let ((_g63316_ (let () (declare (not safe)) (##length _g63317_))))
          (cond ((let () (declare (not safe)) (##fx= _g63316_ 2))
                 (apply (lambda (_f57810_ _lst57811_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f57810_ _lst57811_)))
                        _g63317_))
                ((let () (declare (not safe)) (##fx= _g63316_ 3))
                 (apply (lambda (_f57813_ _lst157814_ _lst257815_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f57813_ _lst157814_ _lst257815_)))
                        _g63317_))
                ((let () (declare (not safe)) (##fx>= _g63316_ 3))
                 (apply andmap* _g63317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g63317_))))))
    (define andmap*
      (lambda (_f57803_ . _rest57804_)
        (let _recur57806_ ((_rest57808_ _rest57804_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57808_))
              (if (apply _f57803_ (map car _rest57808_))
                  (let ((__tmp63318 (map cdr _rest57808_)))
                    (declare (not safe))
                    (_recur57806_ __tmp63318))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f57760_ _lst57761_)
        (let _lp57763_ ((_rest57765_ _lst57761_))
          (let* ((_rest5776657774_ _rest57765_)
                 (_else5776857782_ (lambda () '#f))
                 (_K5777057791_
                  (lambda (_rest57785_ _x57786_)
                    (let ((_$e57788_ (_f57760_ _x57786_)))
                      (if _$e57788_
                          _$e57788_
                          (let ()
                            (declare (not safe))
                            (_lp57763_ _rest57785_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5776657774_))
                (let ((_hd5777157794_
                       (let () (declare (not safe)) (##car _rest5776657774_)))
                      (_tl5777257796_
                       (let () (declare (not safe)) (##cdr _rest5776657774_))))
                  (let* ((_x57799_ _hd5777157794_)
                         (_rest57801_ _tl5777257796_))
                    (declare (not safe))
                    (_K5777057791_ _rest57801_ _x57799_)))
                (let () (declare (not safe)) (_else5776857782_)))))))
    (define ormap2
      (lambda (_f57682_ _lst157683_ _lst257684_)
        (let _lp57686_ ((_rest157688_ _lst157683_) (_rest257689_ _lst257684_))
          (let* ((_rest15769057698_ _rest157688_)
                 (_else5769257706_ (lambda () '#f))
                 (_K5769457748_
                  (lambda (_rest157709_ _x157710_)
                    (let* ((_rest25771157719_ _rest257689_)
                           (_else5771357727_ (lambda () '#f))
                           (_K5771557736_
                            (lambda (_rest257730_ _x257731_)
                              (let ((_$e57733_ (_f57682_ _x157710_ _x257731_)))
                                (if _$e57733_
                                    _$e57733_
                                    (let ()
                                      (declare (not safe))
                                      (_lp57686_
                                       _rest157709_
                                       _rest257730_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25771157719_))
                          (let ((_hd5771657739_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25771157719_)))
                                (_tl5771757741_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25771157719_))))
                            (let* ((_x257744_ _hd5771657739_)
                                   (_rest257746_ _tl5771757741_))
                              (declare (not safe))
                              (_K5771557736_ _rest257746_ _x257744_)))
                          (let () (declare (not safe)) (_else5771357727_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15769057698_))
                (let ((_hd5769557751_
                       (let () (declare (not safe)) (##car _rest15769057698_)))
                      (_tl5769657753_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15769057698_))))
                  (let* ((_x157756_ _hd5769557751_)
                         (_rest157758_ _tl5769657753_))
                    (declare (not safe))
                    (_K5769457748_ _rest157758_ _x157756_)))
                (let () (declare (not safe)) (_else5769257706_)))))))
    (define ormap
      (lambda _g63320_
        (let ((_g63319_ (let () (declare (not safe)) (##length _g63320_))))
          (cond ((let () (declare (not safe)) (##fx= _g63319_ 2))
                 (apply (lambda (_f57670_ _lst57671_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f57670_ _lst57671_)))
                        _g63320_))
                ((let () (declare (not safe)) (##fx= _g63319_ 3))
                 (apply (lambda (_f57673_ _lst157674_ _lst257675_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f57673_ _lst157674_ _lst257675_)))
                        _g63320_))
                ((let () (declare (not safe)) (##fx>= _g63319_ 3))
                 (apply ormap* _g63320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g63320_))))))
    (define ormap*
      (lambda (_f57660_ . _rest57661_)
        (let _recur57663_ ((_rest57665_ _rest57661_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57665_))
              (let ((_$e57667_ (apply _f57660_ (map car _rest57665_))))
                (if _$e57667_
                    _$e57667_
                    (let ((__tmp63321 (map cdr _rest57665_)))
                      (declare (not safe))
                      (_recur57663_ __tmp63321))))
              '#f))))
    (define filter
      (lambda (_f57618_ _lst57619_)
        (let _recur57621_ ((_lst57623_ _lst57619_))
          (let* ((_lst5762457632_ _lst57623_)
                 (_else5762657640_ (lambda () '()))
                 (_K5762857648_
                  (lambda (_rest57643_ _hd57644_)
                    (if (_f57618_ _hd57644_)
                        (let ((_tail57646_
                               (let ()
                                 (declare (not safe))
                                 (_recur57621_ _rest57643_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail57646_ _rest57643_))
                              _lst57623_
                              (let ()
                                (declare (not safe))
                                (cons _hd57644_ _tail57646_))))
                        (let ()
                          (declare (not safe))
                          (_recur57621_ _rest57643_))))))
            (if (let () (declare (not safe)) (##pair? _lst5762457632_))
                (let ((_hd5762957651_
                       (let () (declare (not safe)) (##car _lst5762457632_)))
                      (_tl5763057653_
                       (let () (declare (not safe)) (##cdr _lst5762457632_))))
                  (let* ((_hd57656_ _hd5762957651_)
                         (_rest57658_ _tl5763057653_))
                    (declare (not safe))
                    (_K5762857648_ _rest57658_ _hd57656_)))
                (let () (declare (not safe)) (_else5762657640_)))))))
    (define filter-map1
      (lambda (_f57573_ _lst57574_)
        (let _recur57576_ ((_rest57578_ _lst57574_))
          (let* ((_rest5757957587_ _rest57578_)
                 (_else5758157595_ (lambda () '()))
                 (_K5758357606_
                  (lambda (_rest57598_ _x57599_)
                    (let ((_$e57601_ (_f57573_ _x57599_)))
                      (if _$e57601_
                          ((lambda (_r57604_)
                             (let ((__tmp63322
                                    (let ()
                                      (declare (not safe))
                                      (_recur57576_ _rest57598_))))
                               (declare (not safe))
                               (cons _r57604_ __tmp63322)))
                           _$e57601_)
                          (let ()
                            (declare (not safe))
                            (_recur57576_ _rest57598_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5757957587_))
                (let ((_hd5758457609_
                       (let () (declare (not safe)) (##car _rest5757957587_)))
                      (_tl5758557611_
                       (let () (declare (not safe)) (##cdr _rest5757957587_))))
                  (let* ((_x57614_ _hd5758457609_)
                         (_rest57616_ _tl5758557611_))
                    (declare (not safe))
                    (_K5758357606_ _rest57616_ _x57614_)))
                (let () (declare (not safe)) (_else5758157595_)))))))
    (define filter-map2
      (lambda (_f57493_ _lst157494_ _lst257495_)
        (let _recur57497_ ((_rest157499_ _lst157494_)
                           (_rest257500_ _lst257495_))
          (let* ((_rest15750157509_ _rest157499_)
                 (_else5750357517_ (lambda () '()))
                 (_K5750557561_
                  (lambda (_rest157520_ _x157521_)
                    (let* ((_rest25752257530_ _rest257500_)
                           (_else5752457538_ (lambda () '()))
                           (_K5752657549_
                            (lambda (_rest257541_ _x257542_)
                              (let ((_$e57544_ (_f57493_ _x157521_ _x257542_)))
                                (if _$e57544_
                                    ((lambda (_r57547_)
                                       (let ((__tmp63323
                                              (let ()
                                                (declare (not safe))
                                                (_recur57497_
                                                 _rest157520_
                                                 _rest257541_))))
                                         (declare (not safe))
                                         (cons _r57547_ __tmp63323)))
                                     _$e57544_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur57497_
                                       _rest157520_
                                       _rest257541_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25752257530_))
                          (let ((_hd5752757552_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25752257530_)))
                                (_tl5752857554_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25752257530_))))
                            (let* ((_x257557_ _hd5752757552_)
                                   (_rest257559_ _tl5752857554_))
                              (declare (not safe))
                              (_K5752657549_ _rest257559_ _x257557_)))
                          (let () (declare (not safe)) (_else5752457538_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15750157509_))
                (let ((_hd5750657564_
                       (let () (declare (not safe)) (##car _rest15750157509_)))
                      (_tl5750757566_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15750157509_))))
                  (let* ((_x157569_ _hd5750657564_)
                         (_rest157571_ _tl5750757566_))
                    (declare (not safe))
                    (_K5750557561_ _rest157571_ _x157569_)))
                (let () (declare (not safe)) (_else5750357517_)))))))
    (define filter-map
      (lambda _g63325_
        (let ((_g63324_ (let () (declare (not safe)) (##length _g63325_))))
          (cond ((let () (declare (not safe)) (##fx= _g63324_ 2))
                 (apply (lambda (_f57481_ _lst57482_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f57481_ _lst57482_)))
                        _g63325_))
                ((let () (declare (not safe)) (##fx= _g63324_ 3))
                 (apply (lambda (_f57484_ _lst157485_ _lst257486_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f57484_ _lst157485_ _lst257486_)))
                        _g63325_))
                ((let () (declare (not safe)) (##fx>= _g63324_ 3))
                 (apply filter-map* _g63325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g63325_))))))
    (define filter-map*
      (lambda (_f57469_ . _rest57470_)
        (let _recur57472_ ((_rest57474_ _rest57470_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57474_))
              (let ((_$e57476_ (apply _f57469_ (map car _rest57474_))))
                (if _$e57476_
                    ((lambda (_r57479_)
                       (let ((__tmp63327
                              (let ((__tmp63328 (map cdr _rest57474_)))
                                (declare (not safe))
                                (_recur57472_ __tmp63328))))
                         (declare (not safe))
                         (cons _r57479_ __tmp63327)))
                     _$e57476_)
                    (let ((__tmp63326 (map cdr _rest57474_)))
                      (declare (not safe))
                      (_recur57472_ __tmp63326))))
              '()))))
    (define iota__%
      (lambda (_count57437_ _start57438_ _step57439_)
        (if (fixnum? _count57437_)
            '#!void
            (error '"expected fixnum" _count57437_))
        (if (let () (declare (not safe)) (number? _start57438_))
            '#!void
            (error '"expected number" _start57438_))
        (if (let () (declare (not safe)) (number? _step57439_))
            '#!void
            (error '"expected number" _step57439_))
        (let ((_root57441_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp57443_ ((_i57445_ '0)
                          (_x57446_ _start57438_)
                          (_tl57447_ _root57441_))
            (if (let () (declare (not safe)) (##fx< _i57445_ _count57437_))
                (let ((_tl*57449_
                       (let () (declare (not safe)) (cons _x57446_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl57447_ _tl*57449_))
                  (let ((__tmp63330
                         (let () (declare (not safe)) (##fx+ _i57445_ '1)))
                        (__tmp63329 (+ _x57446_ _step57439_)))
                    (declare (not safe))
                    (_lp57443_ __tmp63330 __tmp63329 _tl*57449_)))
                (let () (declare (not safe)) (##cdr _root57441_)))))))
    (define iota__0
      (lambda (_count57454_)
        (let* ((_start57456_ '0) (_step57458_ '1))
          (declare (not safe))
          (iota__% _count57454_ _start57456_ _step57458_))))
    (define iota__1
      (lambda (_count57460_ _start57461_)
        (let ((_step57463_ '1))
          (declare (not safe))
          (iota__% _count57460_ _start57461_ _step57463_))))
    (define iota
      (lambda _g63332_
        (let ((_g63331_ (let () (declare (not safe)) (##length _g63332_))))
          (cond ((let () (declare (not safe)) (##fx= _g63331_ 1))
                 (apply (lambda (_count57454_)
                          (let () (declare (not safe)) (iota__0 _count57454_)))
                        _g63332_))
                ((let () (declare (not safe)) (##fx= _g63331_ 2))
                 (apply (lambda (_count57460_ _start57461_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count57460_ _start57461_)))
                        _g63332_))
                ((let () (declare (not safe)) (##fx= _g63331_ 3))
                 (apply (lambda (_count57465_ _start57466_ _step57467_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count57465_ _start57466_ _step57467_)))
                        _g63332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g63332_))))))
    (define last-pair
      (lambda (_lst57411_)
        (let* ((_lst5741257419_ _lst57411_)
               (_E5741457423_
                (lambda () (error '"No clause matching" _lst5741257419_)))
               (_K5741557428_
                (lambda (_rest57426_)
                  (if (let () (declare (not safe)) (pair? _rest57426_))
                      (let () (declare (not safe)) (last-pair _rest57426_))
                      _lst57411_))))
          (if (let () (declare (not safe)) (##pair? _lst5741257419_))
              (let* ((_tl5741757431_
                      (let () (declare (not safe)) (##cdr _lst5741257419_)))
                     (_rest57434_ _tl5741757431_))
                (declare (not safe))
                (_K5741557428_ _rest57434_))
              (let () (declare (not safe)) (_E5741457423_))))))
    (define last
      (lambda (_lst57409_)
        (car (let () (declare (not safe)) (last-pair _lst57409_)))))
    (define assgetq__%
      (lambda (_key57387_ _lst57389_ _default57391_)
        (let ((_$e57394_
               (if (let () (declare (not safe)) (pair? _lst57389_))
                   (assq _key57387_ _lst57389_)
                   '#f)))
          (if _$e57394_
              (cdr _$e57394_)
              (if (let () (declare (not safe)) (procedure? _default57391_))
                  (_default57391_ _key57387_)
                  _default57391_)))))
    (define assgetq__0
      (lambda (_key57400_ _lst57401_)
        (let ((_default57403_ '#f))
          (declare (not safe))
          (assgetq__% _key57400_ _lst57401_ _default57403_))))
    (define assgetq
      (lambda _g63334_
        (let ((_g63333_ (let () (declare (not safe)) (##length _g63334_))))
          (cond ((let () (declare (not safe)) (##fx= _g63333_ 2))
                 (apply (lambda (_key57400_ _lst57401_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key57400_ _lst57401_)))
                        _g63334_))
                ((let () (declare (not safe)) (##fx= _g63333_ 3))
                 (apply (lambda (_key57405_ _lst57406_ _default57407_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key57405_ _lst57406_ _default57407_)))
                        _g63334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g63334_))))))
    (define assgetv__%
      (lambda (_key57364_ _lst57366_ _default57368_)
        (let ((_$e57371_
               (if (let () (declare (not safe)) (pair? _lst57366_))
                   (assv _key57364_ _lst57366_)
                   '#f)))
          (if _$e57371_
              (cdr _$e57371_)
              (if (let () (declare (not safe)) (procedure? _default57368_))
                  (_default57368_ _key57364_)
                  _default57368_)))))
    (define assgetv__0
      (lambda (_key57377_ _lst57378_)
        (let ((_default57380_ '#f))
          (declare (not safe))
          (assgetv__% _key57377_ _lst57378_ _default57380_))))
    (define assgetv
      (lambda _g63336_
        (let ((_g63335_ (let () (declare (not safe)) (##length _g63336_))))
          (cond ((let () (declare (not safe)) (##fx= _g63335_ 2))
                 (apply (lambda (_key57377_ _lst57378_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key57377_ _lst57378_)))
                        _g63336_))
                ((let () (declare (not safe)) (##fx= _g63335_ 3))
                 (apply (lambda (_key57382_ _lst57383_ _default57384_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key57382_ _lst57383_ _default57384_)))
                        _g63336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g63336_))))))
    (define assget__%
      (lambda (_key57341_ _lst57343_ _default57345_)
        (let ((_$e57348_
               (if (let () (declare (not safe)) (pair? _lst57343_))
                   (assoc _key57341_ _lst57343_)
                   '#f)))
          (if _$e57348_
              (cdr _$e57348_)
              (if (let () (declare (not safe)) (procedure? _default57345_))
                  (_default57345_ _key57341_)
                  _default57345_)))))
    (define assget__0
      (lambda (_key57354_ _lst57355_)
        (let ((_default57357_ '#f))
          (declare (not safe))
          (assget__% _key57354_ _lst57355_ _default57357_))))
    (define assget
      (lambda _g63338_
        (let ((_g63337_ (let () (declare (not safe)) (##length _g63338_))))
          (cond ((let () (declare (not safe)) (##fx= _g63337_ 2))
                 (apply (lambda (_key57354_ _lst57355_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key57354_ _lst57355_)))
                        _g63338_))
                ((let () (declare (not safe)) (##fx= _g63337_ 3))
                 (apply (lambda (_key57359_ _lst57360_ _default57361_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key57359_ _lst57360_ _default57361_)))
                        _g63338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g63338_))))))
    (define pgetq__%
      (lambda (_key57270_ _lst57272_ _default57274_)
        (let _lp57277_ ((_rest57280_ _lst57272_))
          (let* ((_rest5728257292_ _rest57280_)
                 (_else5728457300_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57274_))
                        (_default57274_ _key57270_)
                        _default57274_)))
                 (_K5728657309_
                  (lambda (_rest57303_ _v57304_ _k57306_)
                    (if (let () (declare (not safe)) (eq? _k57306_ _key57270_))
                        _v57304_
                        (let ()
                          (declare (not safe))
                          (_lp57277_ _rest57303_))))))
            (if (let () (declare (not safe)) (##pair? _rest5728257292_))
                (let ((_hd5728757312_
                       (let () (declare (not safe)) (##car _rest5728257292_)))
                      (_tl5728857314_
                       (let () (declare (not safe)) (##cdr _rest5728257292_))))
                  (let ((_k57317_ _hd5728757312_))
                    (if (let () (declare (not safe)) (##pair? _tl5728857314_))
                        (let ((_hd5728957319_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5728857314_)))
                              (_tl5729057321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5728857314_))))
                          (let* ((_v57324_ _hd5728957319_)
                                 (_rest57326_ _tl5729057321_))
                            (declare (not safe))
                            (_K5728657309_ _rest57326_ _v57324_ _k57317_)))
                        (let () (declare (not safe)) (_else5728457300_)))))
                (let () (declare (not safe)) (_else5728457300_)))))))
    (define pgetq__0
      (lambda (_key57331_ _lst57332_)
        (let ((_default57334_ '#f))
          (declare (not safe))
          (pgetq__% _key57331_ _lst57332_ _default57334_))))
    (define pgetq
      (lambda _g63340_
        (let ((_g63339_ (let () (declare (not safe)) (##length _g63340_))))
          (cond ((let () (declare (not safe)) (##fx= _g63339_ 2))
                 (apply (lambda (_key57331_ _lst57332_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key57331_ _lst57332_)))
                        _g63340_))
                ((let () (declare (not safe)) (##fx= _g63339_ 3))
                 (apply (lambda (_key57336_ _lst57337_ _default57338_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key57336_ _lst57337_ _default57338_)))
                        _g63340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g63340_))))))
    (define pgetv__%
      (lambda (_key57199_ _lst57201_ _default57203_)
        (let _lp57206_ ((_rest57209_ _lst57201_))
          (let* ((_rest5721157221_ _rest57209_)
                 (_else5721357229_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57203_))
                        (_default57203_ _key57199_)
                        _default57203_)))
                 (_K5721557238_
                  (lambda (_rest57232_ _v57233_ _k57235_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k57235_ _key57199_))
                        _v57233_
                        (let ()
                          (declare (not safe))
                          (_lp57206_ _rest57232_))))))
            (if (let () (declare (not safe)) (##pair? _rest5721157221_))
                (let ((_hd5721657241_
                       (let () (declare (not safe)) (##car _rest5721157221_)))
                      (_tl5721757243_
                       (let () (declare (not safe)) (##cdr _rest5721157221_))))
                  (let ((_k57246_ _hd5721657241_))
                    (if (let () (declare (not safe)) (##pair? _tl5721757243_))
                        (let ((_hd5721857248_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5721757243_)))
                              (_tl5721957250_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5721757243_))))
                          (let* ((_v57253_ _hd5721857248_)
                                 (_rest57255_ _tl5721957250_))
                            (declare (not safe))
                            (_K5721557238_ _rest57255_ _v57253_ _k57246_)))
                        (let () (declare (not safe)) (_else5721357229_)))))
                (let () (declare (not safe)) (_else5721357229_)))))))
    (define pgetv__0
      (lambda (_key57260_ _lst57261_)
        (let ((_default57263_ '#f))
          (declare (not safe))
          (pgetv__% _key57260_ _lst57261_ _default57263_))))
    (define pgetv
      (lambda _g63342_
        (let ((_g63341_ (let () (declare (not safe)) (##length _g63342_))))
          (cond ((let () (declare (not safe)) (##fx= _g63341_ 2))
                 (apply (lambda (_key57260_ _lst57261_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key57260_ _lst57261_)))
                        _g63342_))
                ((let () (declare (not safe)) (##fx= _g63341_ 3))
                 (apply (lambda (_key57265_ _lst57266_ _default57267_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key57265_ _lst57266_ _default57267_)))
                        _g63342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g63342_))))))
    (define pget__%
      (lambda (_key57128_ _lst57130_ _default57132_)
        (let _lp57135_ ((_rest57138_ _lst57130_))
          (let* ((_rest5714057150_ _rest57138_)
                 (_else5714257158_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57132_))
                        (_default57132_ _key57128_)
                        _default57132_)))
                 (_K5714457167_
                  (lambda (_rest57161_ _v57162_ _k57164_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k57164_ _key57128_))
                        _v57162_
                        (let ()
                          (declare (not safe))
                          (_lp57135_ _rest57161_))))))
            (if (let () (declare (not safe)) (##pair? _rest5714057150_))
                (let ((_hd5714557170_
                       (let () (declare (not safe)) (##car _rest5714057150_)))
                      (_tl5714657172_
                       (let () (declare (not safe)) (##cdr _rest5714057150_))))
                  (let ((_k57175_ _hd5714557170_))
                    (if (let () (declare (not safe)) (##pair? _tl5714657172_))
                        (let ((_hd5714757177_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5714657172_)))
                              (_tl5714857179_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5714657172_))))
                          (let* ((_v57182_ _hd5714757177_)
                                 (_rest57184_ _tl5714857179_))
                            (declare (not safe))
                            (_K5714457167_ _rest57184_ _v57182_ _k57175_)))
                        (let () (declare (not safe)) (_else5714257158_)))))
                (let () (declare (not safe)) (_else5714257158_)))))))
    (define pget__0
      (lambda (_key57189_ _lst57190_)
        (let ((_default57192_ '#f))
          (declare (not safe))
          (pget__% _key57189_ _lst57190_ _default57192_))))
    (define pget
      (lambda _g63344_
        (let ((_g63343_ (let () (declare (not safe)) (##length _g63344_))))
          (cond ((let () (declare (not safe)) (##fx= _g63343_ 2))
                 (apply (lambda (_key57189_ _lst57190_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key57189_ _lst57190_)))
                        _g63344_))
                ((let () (declare (not safe)) (##fx= _g63343_ 3))
                 (apply (lambda (_key57194_ _lst57195_ _default57196_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key57194_ _lst57195_ _default57196_)))
                        _g63344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g63344_))))))
    (define find
      (lambda (_pred57121_ _lst57122_)
        (let ((_$e57124_
               (let () (declare (not safe)) (memf _pred57121_ _lst57122_))))
          (if _$e57124_ (car _$e57124_) '#f))))
    (define memf
      (lambda (_proc57081_ _lst57082_)
        (let _lp57084_ ((_rest57086_ _lst57082_))
          (let* ((_rest5708757095_ _rest57086_)
                 (_else5708957103_ (lambda () '#f))
                 (_K5709157109_
                  (lambda (_tl57106_ _hd57107_)
                    (if (_proc57081_ _hd57107_)
                        _rest57086_
                        (let () (declare (not safe)) (_lp57084_ _tl57106_))))))
            (if (let () (declare (not safe)) (##pair? _rest5708757095_))
                (let ((_hd5709257112_
                       (let () (declare (not safe)) (##car _rest5708757095_)))
                      (_tl5709357114_
                       (let () (declare (not safe)) (##cdr _rest5708757095_))))
                  (let* ((_hd57117_ _hd5709257112_) (_tl57119_ _tl5709357114_))
                    (declare (not safe))
                    (_K5709157109_ _tl57119_ _hd57117_)))
                (let () (declare (not safe)) (_else5708957103_)))))))
    (define remove1
      (lambda (_el57034_ _lst57036_)
        (let _lp57039_ ((_rest57042_ _lst57036_) (_r57044_ '()))
          (let* ((_rest5704657054_ _rest57042_)
                 (_else5704857062_ (lambda () _lst57036_))
                 (_K5705057069_
                  (lambda (_rest57065_ _hd57066_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el57034_ _hd57066_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57065_ _r57044_))
                        (let ((__tmp63345
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57066_ _r57044_))))
                          (declare (not safe))
                          (_lp57039_ _rest57065_ __tmp63345))))))
            (if (let () (declare (not safe)) (##pair? _rest5704657054_))
                (let ((_hd5705157072_
                       (let () (declare (not safe)) (##car _rest5704657054_)))
                      (_tl5705257074_
                       (let () (declare (not safe)) (##cdr _rest5704657054_))))
                  (let* ((_hd57077_ _hd5705157072_)
                         (_rest57079_ _tl5705257074_))
                    (declare (not safe))
                    (_K5705057069_ _rest57079_ _hd57077_)))
                (let () (declare (not safe)) (_else5704857062_)))))))
    (define remv
      (lambda (_el56987_ _lst56989_)
        (let _lp56992_ ((_rest56995_ _lst56989_) (_r56997_ '()))
          (let* ((_rest5699957007_ _rest56995_)
                 (_else5700157015_ (lambda () _lst56989_))
                 (_K5700357022_
                  (lambda (_rest57018_ _hd57019_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el56987_ _hd57019_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57018_ _r56997_))
                        (let ((__tmp63346
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57019_ _r56997_))))
                          (declare (not safe))
                          (_lp56992_ _rest57018_ __tmp63346))))))
            (if (let () (declare (not safe)) (##pair? _rest5699957007_))
                (let ((_hd5700457025_
                       (let () (declare (not safe)) (##car _rest5699957007_)))
                      (_tl5700557027_
                       (let () (declare (not safe)) (##cdr _rest5699957007_))))
                  (let* ((_hd57030_ _hd5700457025_)
                         (_rest57032_ _tl5700557027_))
                    (declare (not safe))
                    (_K5700357022_ _rest57032_ _hd57030_)))
                (let () (declare (not safe)) (_else5700157015_)))))))
    (define remq
      (lambda (_el56940_ _lst56942_)
        (let _lp56945_ ((_rest56948_ _lst56942_) (_r56950_ '()))
          (let* ((_rest5695256960_ _rest56948_)
                 (_else5695456968_ (lambda () _lst56942_))
                 (_K5695656975_
                  (lambda (_rest56971_ _hd56972_)
                    (if (let () (declare (not safe)) (eq? _el56940_ _hd56972_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56971_ _r56950_))
                        (let ((__tmp63347
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56972_ _r56950_))))
                          (declare (not safe))
                          (_lp56945_ _rest56971_ __tmp63347))))))
            (if (let () (declare (not safe)) (##pair? _rest5695256960_))
                (let ((_hd5695756978_
                       (let () (declare (not safe)) (##car _rest5695256960_)))
                      (_tl5695856980_
                       (let () (declare (not safe)) (##cdr _rest5695256960_))))
                  (let* ((_hd56983_ _hd5695756978_)
                         (_rest56985_ _tl5695856980_))
                    (declare (not safe))
                    (_K5695656975_ _rest56985_ _hd56983_)))
                (let () (declare (not safe)) (_else5695456968_)))))))
    (define remf
      (lambda (_proc56899_ _lst56900_)
        (let _lp56902_ ((_rest56904_ _lst56900_) (_r56905_ '()))
          (let* ((_rest5690656914_ _rest56904_)
                 (_else5690856922_ (lambda () _lst56900_))
                 (_K5691056928_
                  (lambda (_rest56925_ _hd56926_)
                    (if (_proc56899_ _hd56926_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56925_ _r56905_))
                        (let ((__tmp63348
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56926_ _r56905_))))
                          (declare (not safe))
                          (_lp56902_ _rest56925_ __tmp63348))))))
            (if (let () (declare (not safe)) (##pair? _rest5690656914_))
                (let ((_hd5691156931_
                       (let () (declare (not safe)) (##car _rest5690656914_)))
                      (_tl5691256933_
                       (let () (declare (not safe)) (##cdr _rest5690656914_))))
                  (let* ((_hd56936_ _hd5691156931_)
                         (_rest56938_ _tl5691256933_))
                    (declare (not safe))
                    (_K5691056928_ _rest56938_ _hd56936_)))
                (let () (declare (not safe)) (_else5690856922_)))))))
    (define 1+ (lambda (_x56897_) (+ _x56897_ '1)))
    (define 1- (lambda (_x56895_) (- _x56895_ '1)))
    (define fx1+ (lambda (_x56893_) (fx+ _x56893_ '1)))
    (define fx1- (lambda (_x56891_) (fx- _x56891_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x56889_)
        (if (fixnum? _x56889_)
            (let () (declare (not safe)) (##fx>= _x56889_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x56887_)
        (if (fixnum? _x56887_)
            (let () (declare (not safe)) (##fx> _x56887_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x56885_) (let () (declare (not safe)) (eq? _x56885_ '0))))
    (define fx<0?
      (lambda (_x56883_)
        (if (fixnum? _x56883_)
            (let () (declare (not safe)) (##fx< _x56883_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x56881_)
        (if (fixnum? _x56881_)
            (let () (declare (not safe)) (##fx<= _x56881_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x56879_)
        (if (let () (declare (not safe)) (symbol? _x56879_))
            (let ((__tmp63349 (uninterned-symbol? _x56879_)))
              (declare (not safe))
              (not __tmp63349))
            '#f)))
    (define display-as-string
      (lambda (_x56851_ _port56852_)
        (if (or (let () (declare (not safe)) (string? _x56851_))
                (let () (declare (not safe)) (symbol? _x56851_))
                (keyword? _x56851_)
                (let () (declare (not safe)) (number? _x56851_))
                (let () (declare (not safe)) (char? _x56851_)))
            (display _x56851_ _port56852_)
            (if (let () (declare (not safe)) (pair? _x56851_))
                (begin
                  (let ((__tmp63350 (car _x56851_)))
                    (declare (not safe))
                    (display-as-string __tmp63350 _port56852_))
                  (let ((__tmp63351 (cdr _x56851_)))
                    (declare (not safe))
                    (display-as-string __tmp63351 _port56852_)))
                (if (let () (declare (not safe)) (vector? _x56851_))
                    (vector-for-each
                     (lambda (_g5686556867_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5686556867_ _port56852_)))
                     _x56851_)
                    (if (or (let () (declare (not safe)) (null? _x56851_))
                            (let ()
                              (declare (not safe))
                              (eq? _x56851_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x56851_))
                            (let () (declare (not safe)) (boolean? _x56851_)))
                        '#!void
                        (error '"cannot convert as string" _x56851_)))))))
    (define as-string__0
      (lambda (_x56839_)
        (if (let () (declare (not safe)) (string? _x56839_))
            _x56839_
            (if (let () (declare (not safe)) (symbol? _x56839_))
                (symbol->string _x56839_)
                (if (keyword? _x56839_)
                    (keyword->string _x56839_)
                    (call-with-output-string
                     '()
                     (lambda (_g5684056842_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x56839_ _g5684056842_)))))))))
    (define as-string__1
      (lambda _args56845_
        (call-with-output-string
         '()
         (lambda (_g5684656848_)
           (let ()
             (declare (not safe))
             (display-as-string _args56845_ _g5684656848_))))))
    (define as-string
      (lambda _g63353_
        (let ((_g63352_ (let () (declare (not safe)) (##length _g63353_))))
          (cond ((let () (declare (not safe)) (##fx= _g63352_ 1))
                 (apply (lambda (_x56839_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x56839_)))
                        _g63353_))
                (#t (apply as-string__1 _g63353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g63353_))))))
    (define make-symbol__0
      (lambda (_x56835_)
        (if (interned-symbol? _x56835_)
            _x56835_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x56835_))))))
    (define make-symbol__1
      (lambda _args56837_ (string->symbol (apply as-string _args56837_))))
    (define make-symbol
      (lambda _g63355_
        (let ((_g63354_ (let () (declare (not safe)) (##length _g63355_))))
          (cond ((let () (declare (not safe)) (##fx= _g63354_ 1))
                 (apply (lambda (_x56835_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x56835_)))
                        _g63355_))
                (#t (apply make-symbol__1 _g63355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g63355_))))))
    (define make-keyword__0
      (lambda (_x56831_)
        (if (interned-keyword? _x56831_)
            _x56831_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x56831_))))))
    (define make-keyword__1
      (lambda _args56833_ (string->keyword (apply as-string _args56833_))))
    (define make-keyword
      (lambda _g63357_
        (let ((_g63356_ (let () (declare (not safe)) (##length _g63357_))))
          (cond ((let () (declare (not safe)) (##fx= _g63356_ 1))
                 (apply (lambda (_x56831_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x56831_)))
                        _g63357_))
                (#t (apply make-keyword__1 _g63357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g63357_))))))
    (define interned-keyword?
      (lambda (_x56829_)
        (if (keyword? _x56829_)
            (let ((__tmp63358 (uninterned-keyword? _x56829_)))
              (declare (not safe))
              (not __tmp63358))
            '#f)))
    (define symbol->keyword
      (lambda (_sym56827_)
        ((if (uninterned-symbol? _sym56827_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym56827_))))
    (define keyword->symbol
      (lambda (_kw56825_)
        ((if (uninterned-keyword? _kw56825_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw56825_))))
    (define bytes->string__%
      (lambda (_bstr56803_ _enc56804_)
        (if (let () (declare (not safe)) (eq? _enc56804_ 'UTF-8))
            (utf8->string _bstr56803_)
            (let* ((_in56806_
                    (open-input-u8vector
                     (let ((__tmp63359
                            (let ((__tmp63360
                                   (let ((__tmp63361
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr56803_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp63361))))
                              (declare (not safe))
                              (cons _enc56804_ __tmp63360))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp63359))))
                   (_len56808_ (u8vector-length _bstr56803_))
                   (_out56810_ (make-string _len56808_))
                   (_n56812_
                    (read-substring _out56810_ '0 _len56808_ _in56806_)))
              (string-shrink! _out56810_ _n56812_)
              _out56810_))))
    (define bytes->string__0
      (lambda (_bstr56818_)
        (let ((_enc56820_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr56818_ _enc56820_))))
    (define bytes->string
      (lambda _g63363_
        (let ((_g63362_ (let () (declare (not safe)) (##length _g63363_))))
          (cond ((let () (declare (not safe)) (##fx= _g63362_ 1))
                 (apply (lambda (_bstr56818_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr56818_)))
                        _g63363_))
                ((let () (declare (not safe)) (##fx= _g63362_ 2))
                 (apply (lambda (_bstr56822_ _enc56823_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr56822_ _enc56823_)))
                        _g63363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g63363_))))))
    (define string->bytes__%
      (lambda (_str56789_ _enc56790_)
        (if (let () (declare (not safe)) (eq? _enc56790_ 'UTF-8))
            (string->utf8 _str56789_)
            (substring->bytes
             _str56789_
             '0
             (string-length _str56789_)
             _enc56790_))))
    (define string->bytes__0
      (lambda (_str56795_)
        (let ((_enc56797_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str56795_ _enc56797_))))
    (define string->bytes
      (lambda _g63365_
        (let ((_g63364_ (let () (declare (not safe)) (##length _g63365_))))
          (cond ((let () (declare (not safe)) (##fx= _g63364_ 1))
                 (apply (lambda (_str56795_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str56795_)))
                        _g63365_))
                ((let () (declare (not safe)) (##fx= _g63364_ 2))
                 (apply (lambda (_str56799_ _enc56800_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str56799_ _enc56800_)))
                        _g63365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g63365_))))))
    (define substring->bytes__%
      (lambda (_str56767_ _start56768_ _end56769_ _enc56770_)
        (if (let () (declare (not safe)) (eq? _enc56770_ 'UTF-8))
            (string->utf8 _str56767_ _start56768_ _end56769_)
            (let ((_out56772_
                   (open-output-u8vector
                    (let ((__tmp63366
                           (let ()
                             (declare (not safe))
                             (cons _enc56770_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp63366)))))
              (write-substring _str56767_ _start56768_ _end56769_ _out56772_)
              (get-output-u8vector _out56772_)))))
    (define substring->bytes__0
      (lambda (_str56777_ _start56778_ _end56779_)
        (let ((_enc56781_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str56777_
           _start56778_
           _end56779_
           _enc56781_))))
    (define substring->bytes
      (lambda _g63368_
        (let ((_g63367_ (let () (declare (not safe)) (##length _g63368_))))
          (cond ((let () (declare (not safe)) (##fx= _g63367_ 3))
                 (apply (lambda (_str56777_ _start56778_ _end56779_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str56777_
                             _start56778_
                             _end56779_)))
                        _g63368_))
                ((let () (declare (not safe)) (##fx= _g63367_ 4))
                 (apply (lambda (_str56783_ _start56784_ _end56785_ _enc56786_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str56783_
                             _start56784_
                             _end56785_
                             _enc56786_)))
                        _g63368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g63368_))))))
    (define string-empty?
      (lambda (_str56764_)
        (let ((__tmp63369 (string-length _str56764_)))
          (declare (not safe))
          (##fxzero? __tmp63369))))
    (define string-prefix?
      (lambda (_prefix56754_ _str56755_)
        (let ((_str-len56757_ (string-length _str56755_))
              (_prefix-len56758_ (string-length _prefix56754_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len56758_ _str-len56757_))
              (let _lp56760_ ((_i56762_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i56762_ _prefix-len56758_))
                    (if (let ((__tmp63372
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str56755_ _i56762_)))
                              (__tmp63371
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix56754_ _i56762_))))
                          (declare (not safe))
                          (eq? __tmp63372 __tmp63371))
                        (let ((__tmp63370
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i56762_ '1))))
                          (declare (not safe))
                          (_lp56760_ __tmp63370))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str56732_ _char56733_ _start56734_)
        (let ((_len56736_ (string-length _str56732_)))
          (let _lp56738_ ((_k56740_ _start56734_))
            (if (let () (declare (not safe)) (##fx< _k56740_ _len56736_))
                (if (let ((__tmp63374
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56732_ _k56740_))))
                      (declare (not safe))
                      (eq? _char56733_ __tmp63374))
                    _k56740_
                    (let ((__tmp63373
                           (let () (declare (not safe)) (##fx+ _k56740_ '1))))
                      (declare (not safe))
                      (_lp56738_ __tmp63373)))
                '#f)))))
    (define string-index__0
      (lambda (_str56745_ _char56746_)
        (let ((_start56748_ '0))
          (declare (not safe))
          (string-index__% _str56745_ _char56746_ _start56748_))))
    (define string-index
      (lambda _g63376_
        (let ((_g63375_ (let () (declare (not safe)) (##length _g63376_))))
          (cond ((let () (declare (not safe)) (##fx= _g63375_ 2))
                 (apply (lambda (_str56745_ _char56746_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str56745_ _char56746_)))
                        _g63376_))
                ((let () (declare (not safe)) (##fx= _g63375_ 3))
                 (apply (lambda (_str56750_ _char56751_ _start56752_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str56750_
                             _char56751_
                             _start56752_)))
                        _g63376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g63376_))))))
    (define string-rindex__%
      (lambda (_str56703_ _char56704_ _start56705_)
        (let* ((_len56707_ (string-length _str56703_))
               (_start56712_
                (let ((_$e56709_ _start56705_))
                  (if _$e56709_
                      _$e56709_
                      (let () (declare (not safe)) (##fx- _len56707_ '1))))))
          (let _lp56715_ ((_k56717_ _start56712_))
            (if (let () (declare (not safe)) (##fx>= _k56717_ '0))
                (if (let ((__tmp63378
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56703_ _k56717_))))
                      (declare (not safe))
                      (eq? _char56704_ __tmp63378))
                    _k56717_
                    (let ((__tmp63377
                           (let () (declare (not safe)) (##fx- _k56717_ '1))))
                      (declare (not safe))
                      (_lp56715_ __tmp63377)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str56722_ _char56723_)
        (let ((_start56725_ '#f))
          (declare (not safe))
          (string-rindex__% _str56722_ _char56723_ _start56725_))))
    (define string-rindex
      (lambda _g63380_
        (let ((_g63379_ (let () (declare (not safe)) (##length _g63380_))))
          (cond ((let () (declare (not safe)) (##fx= _g63379_ 2))
                 (apply (lambda (_str56722_ _char56723_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str56722_ _char56723_)))
                        _g63380_))
                ((let () (declare (not safe)) (##fx= _g63379_ 3))
                 (apply (lambda (_str56727_ _char56728_ _start56729_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str56727_
                             _char56728_
                             _start56729_)))
                        _g63380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g63380_))))))
    (define string-split
      (lambda (_str56687_ _char56688_)
        (let ((_len56690_ (string-length _str56687_)))
          (let _lp56692_ ((_start56694_ '0) (_r56695_ '()))
            (let ((_$e56697_
                   (let ()
                     (declare (not safe))
                     (string-index _str56687_ _char56688_ _start56694_))))
              (if _$e56697_
                  ((lambda (_end56700_)
                     (let ((__tmp63384
                            (let ()
                              (declare (not safe))
                              (##fx+ _end56700_ '1)))
                           (__tmp63382
                            (let ((__tmp63383
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56687_
                                      _start56694_
                                      _end56700_))))
                              (declare (not safe))
                              (cons __tmp63383 _r56695_))))
                       (declare (not safe))
                       (_lp56692_ __tmp63384 __tmp63382)))
                   _$e56697_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start56694_ _len56690_))
                      (let ((__tmp63381
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56687_
                                      _start56694_
                                      _len56690_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp63381 _r56695_))
                      (reverse _r56695_))))))))
    (define string-join
      (lambda (_strs56592_ _join56593_)
        (letrec ((_join-length56595_
                  (lambda (_strs56646_ _jlen56647_)
                    (let _lp56649_ ((_rest56651_ _strs56646_) (_len56652_ '0))
                      (let* ((_rest5665356661_ _rest56651_)
                             (_else5665556669_ (lambda () '0))
                             (_K5665756675_
                              (lambda (_rest56672_ _hd56673_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd56673_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest56672_))
                                        (let ((__tmp63386
                                               (let ((__tmp63387
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd56673_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp63387
                                                        _jlen56647_
                                                        _len56652_))))
                                          (declare (not safe))
                                          (_lp56649_ _rest56672_ __tmp63386))
                                        (let ((__tmp63385
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd56673_))))
                                          (declare (not safe))
                                          (##fx+ __tmp63385 _len56652_)))
                                    (error '"expected string" _hd56673_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5665356661_))
                            (let ((_hd5665856678_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5665356661_)))
                                  (_tl5665956680_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5665356661_))))
                              (let* ((_hd56683_ _hd5665856678_)
                                     (_rest56685_ _tl5665956680_))
                                (declare (not safe))
                                (_K5665756675_ _rest56685_ _hd56683_)))
                            (let ()
                              (declare (not safe))
                              (_else5665556669_))))))))
          (let* ((_join56597_
                  (if (let () (declare (not safe)) (char? _join56593_))
                      (string _join56593_)
                      (if (let () (declare (not safe)) (string? _join56593_))
                          _join56593_
                          (error '"expected string or char" _join56593_))))
                 (_jlen56599_
                  (let () (declare (not safe)) (##string-length _join56597_)))
                 (_olen56601_
                  (let ()
                    (declare (not safe))
                    (_join-length56595_ _strs56592_ _jlen56599_)))
                 (_ostr56603_ (make-string _olen56601_)))
            (let _lp56606_ ((_rest56608_ _strs56592_) (_k56609_ '0))
              (let* ((_rest5661056618_ _rest56608_)
                     (_else5661256626_ (lambda () '""))
                     (_K5661456634_
                      (lambda (_rest56629_ _hd56630_)
                        (let ((_hdlen56632_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd56630_))))
                          (if (let () (declare (not safe)) (pair? _rest56629_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56630_
                                   '0
                                   _hdlen56632_
                                   _ostr56603_
                                   _k56609_))
                                (let ((__tmp63388
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56609_ _hdlen56632_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join56597_
                                   '0
                                   _jlen56599_
                                   _ostr56603_
                                   __tmp63388))
                                (let ((__tmp63389
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56609_
                                                _hdlen56632_
                                                _jlen56599_))))
                                  (declare (not safe))
                                  (_lp56606_ _rest56629_ __tmp63389)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56630_
                                   '0
                                   _hdlen56632_
                                   _ostr56603_
                                   _k56609_))
                                _ostr56603_))))))
                (if (let () (declare (not safe)) (##pair? _rest5661056618_))
                    (let ((_hd5661556637_
                           (let ()
                             (declare (not safe))
                             (##car _rest5661056618_)))
                          (_tl5661656639_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5661056618_))))
                      (let* ((_hd56642_ _hd5661556637_)
                             (_rest56644_ _tl5661656639_))
                        (declare (not safe))
                        (_K5661456634_ _rest56644_ _hd56642_)))
                    (let () (declare (not safe)) (_else5661256626_)))))))))
    (define read-u8vector
      (lambda (_bytes56589_ _port56590_)
        (read-subu8vector
         _bytes56589_
         '0
         (u8vector-length _bytes56589_)
         _port56590_)))
    (define write-u8vector
      (lambda (_bytes56586_ _port56587_)
        (write-subu8vector
         _bytes56586_
         '0
         (u8vector-length _bytes56586_)
         _port56587_)))
    (define read-string
      (lambda (_str56583_ _port56584_)
        (read-substring _str56583_ '0 (string-length _str56583_) _port56584_)))
    (define write-string
      (lambda (_str56580_ _port56581_)
        (write-substring
         _str56580_
         '0
         (string-length _str56580_)
         _port56581_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag56551_
               _dbg-exprs56552_
               _dbg-thunks56553_
               _expr56554_
               _thunk56555_)
        (letrec ((_fo56557_
                  (lambda ()
                    (force-output (current-error-port))
                    (force-output (current-output-port))))
                 (_d56558_
                  (lambda (_x56566_) (display _x56566_ (current-error-port))))
                 (_p56559_ (DBG-printer))
                 (_w56560_
                  (lambda (_x56568_) (_p56559_ _x56568_ (current-error-port))))
                 (_n56561_ (lambda () (newline (current-error-port))))
                 (_v56562_
                  (lambda (_l56571_)
                    (for-each
                     (lambda (_x56573_)
                       (let () (declare (not safe)) (_d56558_ '" "))
                       (let () (declare (not safe)) (_w56560_ _x56573_)))
                     _l56571_)
                    (let () (declare (not safe)) (_n56561_))))
                 (_x56563_
                  (lambda (_expr56575_ _thunk56576_)
                    (let () (declare (not safe)) (_d56558_ '"  "))
                    (let () (declare (not safe)) (_w56560_ _expr56575_))
                    (let () (declare (not safe)) (_d56558_ '" =>"))
                    (call-with-values
                     _thunk56576_
                     (lambda _x56578_
                       (let () (declare (not safe)) (_v56562_ _x56578_))
                       (apply values _x56578_))))))
          (if _tag56551_
              (begin
                (if (let () (declare (not safe)) (eq? _tag56551_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_d56558_ _tag56551_))
                      (let () (declare (not safe)) (_n56561_))))
                (for-each _x56563_ _dbg-exprs56552_ _dbg-thunks56553_)
                (if _thunk56555_
                    (let ()
                      (declare (not safe))
                      (_x56563_ _expr56554_ _thunk56555_))
                    '#!void))
              (if _thunk56555_ (_thunk56555_) '#!void)))))))
