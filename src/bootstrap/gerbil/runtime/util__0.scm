(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1707556024)
  (begin
    (define displayln
      (lambda _args58644_
        (let _lp58646_ ((_rest58648_ _args58644_))
          (let* ((_rest5864958657_ _rest58648_)
                 (_else5865158665_ (lambda () (newline)))
                 (_K5865358671_
                  (lambda (_rest58668_ _hd58669_)
                    (display _hd58669_)
                    (let () (declare (not safe)) (_lp58646_ _rest58668_)))))
            (if (let () (declare (not safe)) (##pair? _rest5864958657_))
                (let ((_hd5865458674_
                       (let () (declare (not safe)) (##car _rest5864958657_)))
                      (_tl5865558676_
                       (let () (declare (not safe)) (##cdr _rest5864958657_))))
                  (let* ((_hd58679_ _hd5865458674_)
                         (_rest58681_ _tl5865558676_))
                    (declare (not safe))
                    (_K5865358671_ _rest58681_ _hd58679_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args58642_ (for-each display _args58642_)))
    (define file-newer?
      (lambda (_file158635_ _file258636_)
        (letrec ((_modification-time58638_
                  (lambda (_file58640_)
                    (let ((__tmp63263
                           (file-info-last-modification-time
                            (file-info _file58640_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp63263)))))
          (let ((__tmp63265
                 (let ()
                   (declare (not safe))
                   (_modification-time58638_ _file158635_)))
                (__tmp63264
                 (let ()
                   (declare (not safe))
                   (_modification-time58638_ _file258636_))))
            (declare (not safe))
            (##fl> __tmp63265 __tmp63264)))))
    (define create-directory*__%
      (lambda (_dir58609_ _perms58610_)
        (letrec ((_create158612_
                  (lambda (_path58623_)
                    (if (file-exists? _path58623_)
                        (if (let ((__tmp63266 (file-type _path58623_)))
                              (declare (not safe))
                              (eq? __tmp63266 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path58623_))
                        (if _perms58610_
                            (create-directory
                             (list 'path:
                                   _path58623_
                                   'permissions:
                                   _perms58610_))
                            (create-directory _path58623_))))))
          (if (file-exists? _dir58609_)
              '#!void
              (let _lp58614_ ((_start58616_ '0))
                (let ((_$e58618_
                       (let ()
                         (declare (not safe))
                         (string-index _dir58609_ '#\/ _start58616_))))
                  (if _$e58618_
                      ((lambda (_x58621_)
                         (if (let () (declare (not safe)) (##fx> _x58621_ '0))
                             (let ((__tmp63267
                                    (substring _dir58609_ '0 _x58621_)))
                               (declare (not safe))
                               (_create158612_ __tmp63267))
                             '#!void)
                         (let ((__tmp63268
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x58621_ '1))))
                           (declare (not safe))
                           (_lp58614_ __tmp63268)))
                       _$e58618_)
                      (let ()
                        (declare (not safe))
                        (_create158612_ _dir58609_)))))))))
    (define create-directory*__0
      (lambda (_dir58628_)
        (let ((_perms58630_ '493))
          (declare (not safe))
          (create-directory*__% _dir58628_ _perms58630_))))
    (define create-directory*
      (lambda _g63270_
        (let ((_g63269_ (let () (declare (not safe)) (##length _g63270_))))
          (cond ((let () (declare (not safe)) (##fx= _g63269_ 1))
                 (apply (lambda (_dir58628_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir58628_)))
                        _g63270_))
                ((let () (declare (not safe)) (##fx= _g63269_ 2))
                 (apply (lambda (_dir58632_ _perms58633_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir58632_ _perms58633_)))
                        _g63270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g63270_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g63271_ '#t))
    (define true?
      (lambda (_obj58605_) (let () (declare (not safe)) (eq? _obj58605_ '#t))))
    (define false (lambda _g63272_ '#f))
    (define void (lambda _g63273_ '#!void))
    (define void?
      (lambda (_obj58601_)
        (let () (declare (not safe)) (eq? _obj58601_ '#!void))))
    (define eof-object (lambda _g63274_ '#!eof))
    (define identity (lambda (_obj58598_) _obj58598_))
    (define dssl-object?
      (lambda (_obj58596_)
        (if (memq _obj58596_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj58594_)
        (let () (declare (not safe)) (eq? _obj58594_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj58592_)
        (let () (declare (not safe)) (eq? _obj58592_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj58590_)
        (let () (declare (not safe)) (eq? _obj58590_ '#!optional))))
    (define immediate?
      (lambda (_obj58586_)
        (let* ((_t58588_ (let () (declare (not safe)) (##type _obj58586_)))
               (__tmp63275
                (let () (declare (not safe)) (##fxand _t58588_ '1))))
          (declare (not safe))
          (##fxzero? __tmp63275))))
    (define nonnegative-fixnum?
      (lambda (_obj58584_)
        (if (fixnum? _obj58584_)
            (let ((__tmp63276 (fxnegative? _obj58584_)))
              (declare (not safe))
              (not __tmp63276))
            '#f)))
    (define values-count
      (lambda (_obj58582_)
        (if (let () (declare (not safe)) (##values? _obj58582_))
            (let () (declare (not safe)) (##vector-length _obj58582_))
            '1)))
    (define values-ref
      (lambda (_obj58579_ _k58580_)
        (if (let () (declare (not safe)) (##values? _obj58579_))
            (let () (declare (not safe)) (##vector-ref _obj58579_ _k58580_))
            _obj58579_)))
    (define values->list
      (lambda (_obj58577_)
        (if (let () (declare (not safe)) (##values? _obj58577_))
            (let () (declare (not safe)) (##vector->list _obj58577_))
            (list _obj58577_))))
    (define subvector->list__%
      (lambda (_obj58562_ _start58563_)
        (let ((_lst58565_
               (let () (declare (not safe)) (##vector->list _obj58562_))))
          (list-tail _lst58565_ _start58563_))))
    (define subvector->list__0
      (lambda (_obj58570_)
        (let ((_start58572_ '0))
          (declare (not safe))
          (subvector->list__% _obj58570_ _start58572_))))
    (define subvector->list
      (lambda _g63278_
        (let ((_g63277_ (let () (declare (not safe)) (##length _g63278_))))
          (cond ((let () (declare (not safe)) (##fx= _g63277_ 1))
                 (apply (lambda (_obj58570_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj58570_)))
                        _g63278_))
                ((let () (declare (not safe)) (##fx= _g63277_ 2))
                 (apply (lambda (_obj58574_ _start58575_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj58574_ _start58575_)))
                        _g63278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g63278_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args58559_ (apply make-table 'test: eq? _args58559_)))
    (define make-hash-table-eqv
      (lambda _args58557_ (apply make-table 'test: eqv? _args58557_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst58554_ . _args58555_)
        (apply list->table _lst58554_ 'test: eq? _args58555_)))
    (define list->hash-table-eqv
      (lambda (_lst58551_ . _args58552_)
        (apply list->table _lst58551_ 'test: eqv? _args58552_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht58548_ _k58549_) (table-ref _ht58548_ _k58549_ '#f)))
    (define hash-put!
      (lambda (_ht58544_ _k58545_ _v58546_)
        (table-set! _ht58544_ _k58545_ _v58546_)))
    (define hash-update!__%
      (lambda (_ht58523_ _k58524_ _update58525_ _default58526_)
        (let* ((_value58528_
                (let ()
                  (declare (not safe))
                  (table-ref _ht58523_ _k58524_ _default58526_)))
               (__tmp63279 (_update58525_ _value58528_)))
          (declare (not safe))
          (table-set! _ht58523_ _k58524_ __tmp63279))))
    (define hash-update!__0
      (lambda (_ht58533_ _k58534_ _update58535_)
        (let ((_default58537_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht58533_ _k58534_ _update58535_ _default58537_))))
    (define hash-update!
      (lambda _g63281_
        (let ((_g63280_ (let () (declare (not safe)) (##length _g63281_))))
          (cond ((let () (declare (not safe)) (##fx= _g63280_ 3))
                 (apply (lambda (_ht58533_ _k58534_ _update58535_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _ht58533_
                             _k58534_
                             _update58535_)))
                        _g63281_))
                ((let () (declare (not safe)) (##fx= _g63280_ 4))
                 (apply (lambda (_ht58539_
                                 _k58540_
                                 _update58541_
                                 _default58542_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht58539_
                             _k58540_
                             _update58541_
                             _default58542_)))
                        _g63281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g63281_))))))
    (define hash-remove!
      (lambda (_ht58519_ _k58520_) (table-set! _ht58519_ _k58520_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht58517_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht58517_))))
    (define plist->hash-table__%
      (lambda (_plst58452_ _ht58453_)
        (let _lp58455_ ((_rest58457_ _plst58452_))
          (let* ((_rest5845858469_ _rest58457_)
                 (_E5846158473_
                  (lambda () (error '"No clause matching" _rest5845858469_))))
            (let ((_K5846358488_
                   (lambda (_rest58484_ _v58485_ _k58486_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht58453_ _k58486_ _v58485_))
                     (let () (declare (not safe)) (_lp58455_ _rest58484_))))
                  (_K5846258478_ (lambda () _ht58453_)))
              (let ((_try-match5846058481_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest5845858469_ '()))
                           (let () (declare (not safe)) (_K5846258478_))
                           (let () (declare (not safe)) (_E5846158473_))))))
                (if (let () (declare (not safe)) (##pair? _rest5845858469_))
                    (let ((_tl5846558493_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5845858469_)))
                          (_hd5846458491_
                           (let ()
                             (declare (not safe))
                             (##car _rest5845858469_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5846558493_))
                          (let ((_tl5846758500_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5846558493_)))
                                (_hd5846658498_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5846558493_))))
                            (let ((_k58496_ _hd5846458491_)
                                  (_v58503_ _hd5846658498_)
                                  (_rest58505_ _tl5846758500_))
                              (let ()
                                (declare (not safe))
                                (_K5846358488_
                                 _rest58505_
                                 _v58503_
                                 _k58496_))))
                          (let ()
                            (declare (not safe))
                            (_try-match5846058481_))))
                    (let ()
                      (declare (not safe))
                      (_try-match5846058481_)))))))))
    (define plist->hash-table__0
      (lambda (_plst58510_)
        (let ((_ht58512_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst58510_ _ht58512_))))
    (define plist->hash-table
      (lambda _g63283_
        (let ((_g63282_ (let () (declare (not safe)) (##length _g63283_))))
          (cond ((let () (declare (not safe)) (##fx= _g63282_ 1))
                 (apply (lambda (_plst58510_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst58510_)))
                        _g63283_))
                ((let () (declare (not safe)) (##fx= _g63282_ 2))
                 (apply (lambda (_plst58514_ _ht58515_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst58514_ _ht58515_)))
                        _g63283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g63283_))))))
    (define plist->hash-table-eq
      (lambda (_plst58449_)
        (let ((__tmp63284
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst58449_ __tmp63284))))
    (define plist->hash-table-eqv
      (lambda (_plst58447_)
        (let ((__tmp63285
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst58447_ __tmp63285))))
    (define hash-key?
      (lambda (_ht58444_ _k58445_)
        (let ((__tmp63286
               (let ((__tmp63287
                      (let ()
                        (declare (not safe))
                        (table-ref _ht58444_ _k58445_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp63287 absent-value))))
          (declare (not safe))
          (not __tmp63286))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun58437_ _ht58438_)
        (let ((__tmp63288
               (lambda (_k58440_ _v58441_ _r58442_)
                 (let ((__tmp63289 (_fun58437_ _k58440_ _v58441_)))
                   (declare (not safe))
                   (cons __tmp63289 _r58442_)))))
          (declare (not safe))
          (hash-fold __tmp63288 '() _ht58438_))))
    (define hash-fold
      (lambda (_fun58428_ _iv58429_ _ht58430_)
        (let ((_ret58432_ _iv58429_))
          (let ((__tmp63290
                 (lambda (_k58434_ _v58435_)
                   (set! _ret58432_
                         (_fun58428_ _k58434_ _v58435_ _ret58432_)))))
            (declare (not safe))
            (table-for-each __tmp63290 _ht58430_))
          _ret58432_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht58423_)
        (let ((__tmp63291 (lambda (_k58425_ _v58426_) _k58425_)))
          (declare (not safe))
          (hash-map __tmp63291 _ht58423_))))
    (define hash-values
      (lambda (_ht58418_)
        (let ((__tmp63292 (lambda (_k58420_ _v58421_) _v58421_)))
          (declare (not safe))
          (hash-map __tmp63292 _ht58418_))))
    (define hash-copy
      (lambda (_hd58413_ . _rest58414_)
        (let ((_hd58416_ (table-copy _hd58413_)))
          (if (let () (declare (not safe)) (null? _rest58414_))
              _hd58416_
              (apply hash-copy! _hd58416_ _rest58414_)))))
    (define hash-copy!
      (lambda (_hd58408_ . _rest58409_)
        (for-each
         (lambda (_r58411_) (table-merge! _hd58408_ _r58411_))
         _rest58409_)
        _hd58408_))
    (define hash-merge
      (lambda (_hd58402_ . _rest58403_)
        (let ((__tmp63293
               (lambda (_tab58405_ _r58406_)
                 (table-merge _r58406_ _tab58405_))))
          (declare (not safe))
          (foldl1 __tmp63293 _hd58402_ _rest58403_))))
    (define hash-merge!
      (lambda (_hd58396_ . _rest58397_)
        (let ((__tmp63294
               (lambda (_tab58399_ _r58400_)
                 (table-merge! _r58400_ _tab58399_))))
          (declare (not safe))
          (foldl1 __tmp63294 _hd58396_ _rest58397_))))
    (define hash-clear!__%
      (lambda (_ht58381_ _size58382_)
        (let ((_gcht58384_
               (let () (declare (not safe)) (##vector-ref _ht58381_ '5))))
          (if (let ((__tmp63295 (fixnum? _gcht58384_)))
                (declare (not safe))
                (not __tmp63295))
              (let ()
                (declare (not safe))
                (##vector-set! _ht58381_ '5 _size58382_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht58389_)
        (let ((_size58391_ '0))
          (declare (not safe))
          (hash-clear!__% _ht58389_ _size58391_))))
    (define hash-clear!
      (lambda _g63297_
        (let ((_g63296_ (let () (declare (not safe)) (##length _g63297_))))
          (cond ((let () (declare (not safe)) (##fx= _g63296_ 1))
                 (apply (lambda (_ht58389_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht58389_)))
                        _g63297_))
                ((let () (declare (not safe)) (##fx= _g63296_ 2))
                 (apply (lambda (_ht58393_ _size58394_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht58393_ _size58394_)))
                        _g63297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g63297_))))))
    (define make-list__%
      (lambda (_k58362_ _val58363_)
        (if (fixnum? _k58362_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k58362_))
        (let _lp58365_ ((_n58367_ '0) (_r58368_ '()))
          (if (let () (declare (not safe)) (##fx< _n58367_ _k58362_))
              (let ((__tmp63299
                     (let () (declare (not safe)) (##fx+ _n58367_ '1)))
                    (__tmp63298
                     (let () (declare (not safe)) (cons _val58363_ _r58368_))))
                (declare (not safe))
                (_lp58365_ __tmp63299 __tmp63298))
              _r58368_))))
    (define make-list__0
      (lambda (_k58373_)
        (let ((_val58375_ '#f))
          (declare (not safe))
          (make-list__% _k58373_ _val58375_))))
    (define make-list
      (lambda _g63301_
        (let ((_g63300_ (let () (declare (not safe)) (##length _g63301_))))
          (cond ((let () (declare (not safe)) (##fx= _g63300_ 1))
                 (apply (lambda (_k58373_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k58373_)))
                        _g63301_))
                ((let () (declare (not safe)) (##fx= _g63300_ 2))
                 (apply (lambda (_k58377_ _val58378_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k58377_ _val58378_)))
                        _g63301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g63301_))))))
    (define cons*
      (lambda (_x58352_ _y58353_ . _rest58354_)
        (letrec ((_recur58356_
                  (lambda (_x58358_ _rest58359_)
                    (if (let () (declare (not safe)) (pair? _rest58359_))
                        (let ((__tmp63302
                               (let ((__tmp63304
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest58359_)))
                                     (__tmp63303
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest58359_))))
                                 (declare (not safe))
                                 (_recur58356_ __tmp63304 __tmp63303))))
                          (declare (not safe))
                          (cons _x58358_ __tmp63302))
                        _x58358_))))
          (let ((__tmp63305
                 (let ()
                   (declare (not safe))
                   (_recur58356_ _y58353_ _rest58354_))))
            (declare (not safe))
            (cons _x58352_ __tmp63305)))))
    (define foldl1
      (lambda (_f58310_ _iv58311_ _lst58312_)
        (let _lp58314_ ((_rest58316_ _lst58312_) (_r58317_ _iv58311_))
          (let* ((_rest5831858326_ _rest58316_)
                 (_else5832058334_ (lambda () _r58317_))
                 (_K5832258340_
                  (lambda (_rest58337_ _x58338_)
                    (let ((__tmp63306 (_f58310_ _x58338_ _r58317_)))
                      (declare (not safe))
                      (_lp58314_ _rest58337_ __tmp63306)))))
            (if (let () (declare (not safe)) (##pair? _rest5831858326_))
                (let ((_hd5832358343_
                       (let () (declare (not safe)) (##car _rest5831858326_)))
                      (_tl5832458345_
                       (let () (declare (not safe)) (##cdr _rest5831858326_))))
                  (let* ((_x58348_ _hd5832358343_)
                         (_rest58350_ _tl5832458345_))
                    (declare (not safe))
                    (_K5832258340_ _rest58350_ _x58348_)))
                (let () (declare (not safe)) (_else5832058334_)))))))
    (define foldl2
      (lambda (_f58233_ _iv58234_ _lst158235_ _lst258236_)
        (let _lp58238_ ((_rest158240_ _lst158235_)
                        (_rest258241_ _lst258236_)
                        (_r58242_ _iv58234_))
          (let* ((_rest15824358251_ _rest158240_)
                 (_else5824558259_ (lambda () _r58242_))
                 (_K5824758298_
                  (lambda (_rest158262_ _x158263_)
                    (let* ((_rest25826458272_ _rest258241_)
                           (_else5826658280_ (lambda () _r58242_))
                           (_K5826858286_
                            (lambda (_rest258283_ _x258284_)
                              (let ((__tmp63307
                                     (_f58233_ _x158263_ _x258284_ _r58242_)))
                                (declare (not safe))
                                (_lp58238_
                                 _rest158262_
                                 _rest258283_
                                 __tmp63307)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25826458272_))
                          (let ((_hd5826958289_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25826458272_)))
                                (_tl5827058291_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25826458272_))))
                            (let* ((_x258294_ _hd5826958289_)
                                   (_rest258296_ _tl5827058291_))
                              (declare (not safe))
                              (_K5826858286_ _rest258296_ _x258294_)))
                          (let () (declare (not safe)) (_else5826658280_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15824358251_))
                (let ((_hd5824858301_
                       (let () (declare (not safe)) (##car _rest15824358251_)))
                      (_tl5824958303_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15824358251_))))
                  (let* ((_x158306_ _hd5824858301_)
                         (_rest158308_ _tl5824958303_))
                    (declare (not safe))
                    (_K5824758298_ _rest158308_ _x158306_)))
                (let () (declare (not safe)) (_else5824558259_)))))))
    (define foldl
      (lambda _g63309_
        (let ((_g63308_ (let () (declare (not safe)) (##length _g63309_))))
          (cond ((let () (declare (not safe)) (##fx= _g63308_ 3))
                 (apply (lambda (_f58218_ _iv58219_ _lst58220_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f58218_ _iv58219_ _lst58220_)))
                        _g63309_))
                ((let () (declare (not safe)) (##fx= _g63308_ 4))
                 (apply (lambda (_f58222_ _iv58223_ _lst158224_ _lst258225_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f58222_
                                    _iv58223_
                                    _lst158224_
                                    _lst258225_)))
                        _g63309_))
                ((let () (declare (not safe)) (##fx>= _g63308_ 4))
                 (apply foldl* _g63309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g63309_))))))
    (define foldl*
      (lambda (_f58206_ _iv58207_ . _rest58208_)
        (let _recur58210_ ((_iv58212_ _iv58207_) (_rest58213_ _rest58208_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58213_))
              (let ((__tmp63311
                     (apply _f58206_
                            (let ((__tmp63313
                                   (lambda (_xs58215_ _r58216_)
                                     (let ((__tmp63314 (car _xs58215_)))
                                       (declare (not safe))
                                       (cons __tmp63314 _r58216_))))
                                  (__tmp63312 (list _iv58212_)))
                              (declare (not safe))
                              (foldr1 __tmp63313 __tmp63312 _rest58213_))))
                    (__tmp63310 (map cdr _rest58213_)))
                (declare (not safe))
                (_recur58210_ __tmp63311 __tmp63310))
              _iv58212_))))
    (define foldr1
      (lambda (_f58165_ _iv58166_ _lst58167_)
        (let _recur58169_ ((_rest58171_ _lst58167_))
          (let* ((_rest5817258180_ _rest58171_)
                 (_else5817458188_ (lambda () _iv58166_))
                 (_K5817658194_
                  (lambda (_rest58191_ _x58192_)
                    (_f58165_
                     _x58192_
                     (let ()
                       (declare (not safe))
                       (_recur58169_ _rest58191_))))))
            (if (let () (declare (not safe)) (##pair? _rest5817258180_))
                (let ((_hd5817758197_
                       (let () (declare (not safe)) (##car _rest5817258180_)))
                      (_tl5817858199_
                       (let () (declare (not safe)) (##cdr _rest5817258180_))))
                  (let* ((_x58202_ _hd5817758197_)
                         (_rest58204_ _tl5817858199_))
                    (declare (not safe))
                    (_K5817658194_ _rest58204_ _x58202_)))
                (let () (declare (not safe)) (_else5817458188_)))))))
    (define foldr2
      (lambda (_f58089_ _iv58090_ _lst158091_ _lst258092_)
        (let _recur58094_ ((_rest158096_ _lst158091_)
                           (_rest258097_ _lst258092_))
          (let* ((_rest15809858106_ _rest158096_)
                 (_else5810058114_ (lambda () _iv58090_))
                 (_K5810258153_
                  (lambda (_rest158117_ _x158118_)
                    (let* ((_rest25811958127_ _rest258097_)
                           (_else5812158135_ (lambda () _iv58090_))
                           (_K5812358141_
                            (lambda (_rest258138_ _x258139_)
                              (_f58089_
                               _x158118_
                               _x258139_
                               (let ()
                                 (declare (not safe))
                                 (_recur58094_ _rest158117_ _rest258138_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25811958127_))
                          (let ((_hd5812458144_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25811958127_)))
                                (_tl5812558146_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25811958127_))))
                            (let* ((_x258149_ _hd5812458144_)
                                   (_rest258151_ _tl5812558146_))
                              (declare (not safe))
                              (_K5812358141_ _rest258151_ _x258149_)))
                          (let () (declare (not safe)) (_else5812158135_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15809858106_))
                (let ((_hd5810358156_
                       (let () (declare (not safe)) (##car _rest15809858106_)))
                      (_tl5810458158_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15809858106_))))
                  (let* ((_x158161_ _hd5810358156_)
                         (_rest158163_ _tl5810458158_))
                    (declare (not safe))
                    (_K5810258153_ _rest158163_ _x158161_)))
                (let () (declare (not safe)) (_else5810058114_)))))))
    (define foldr
      (lambda _g63316_
        (let ((_g63315_ (let () (declare (not safe)) (##length _g63316_))))
          (cond ((let () (declare (not safe)) (##fx= _g63315_ 3))
                 (apply (lambda (_f58074_ _iv58075_ _lst58076_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f58074_ _iv58075_ _lst58076_)))
                        _g63316_))
                ((let () (declare (not safe)) (##fx= _g63315_ 4))
                 (apply (lambda (_f58078_ _iv58079_ _lst158080_ _lst258081_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f58078_
                                    _iv58079_
                                    _lst158080_
                                    _lst258081_)))
                        _g63316_))
                ((let () (declare (not safe)) (##fx>= _g63315_ 4))
                 (apply foldr* _g63316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g63316_))))))
    (define foldr*
      (lambda (_f58063_ _iv58064_ . _rest58065_)
        (let _recur58067_ ((_rest58069_ _rest58065_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58069_))
              (apply _f58063_
                     (let ((__tmp63319
                            (lambda (_xs58071_ _r58072_)
                              (let ((__tmp63320 (car _xs58071_)))
                                (declare (not safe))
                                (cons __tmp63320 _r58072_))))
                           (__tmp63317
                            (list (let ((__tmp63318 (map cdr _rest58069_)))
                                    (declare (not safe))
                                    (_recur58067_ __tmp63318)))))
                       (declare (not safe))
                       (foldr1 __tmp63319 __tmp63317 _rest58069_)))
              _iv58064_))))
    (define remove-nulls!
      (lambda (_l57950_)
        (let* ((_l5795157964_ _l57950_)
               (_E5795557968_
                (lambda () (error '"No clause matching" _l5795157964_))))
          (let ((_K5796058053_
                 (lambda (_r58051_)
                   (let () (declare (not safe)) (remove-nulls! _r58051_))))
                (_K5795758040_
                 (lambda (_r57980_)
                   (let _loop57982_ ((_l57984_ _l57950_) (_r57985_ _r57980_))
                     (let* ((_r5798657999_ _r57985_)
                            (_E5799058003_
                             (lambda ()
                               (error '"No clause matching" _r5798657999_))))
                       (let ((_K5799558030_
                              (lambda (_rr58028_)
                                (set-cdr!
                                 _l57984_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr58028_)))))
                             (_K5799258017_
                              (lambda (_rr58015_)
                                (let ()
                                  (declare (not safe))
                                  (_loop57982_ _r57985_ _rr58015_))))
                             (_K5799158008_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5798657999_))
                             (let ((_tl5799758035_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5798657999_)))
                                   (_hd5799658033_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5798657999_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5799658033_))
                                   (let ((_rr58038_ _tl5799758035_))
                                     (declare (not safe))
                                     (_K5799558030_ _rr58038_))
                                   (let ((_rr58023_ _tl5799758035_))
                                     (declare (not safe))
                                     (_K5799258017_ _rr58023_))))
                             '#!void))))
                   _l57950_))
                (_K5795657973_ (lambda () _l57950_)))
            (if (let () (declare (not safe)) (##pair? _l5795157964_))
                (let ((_tl5796258058_
                       (let () (declare (not safe)) (##cdr _l5795157964_)))
                      (_hd5796158056_
                       (let () (declare (not safe)) (##car _l5795157964_))))
                  (if (let () (declare (not safe)) (##null? _hd5796158056_))
                      (let ((_r58061_ _tl5796258058_))
                        (declare (not safe))
                        (remove-nulls! _r58061_))
                      (let ((_r58046_ _tl5796258058_))
                        (declare (not safe))
                        (_K5795758040_ _r58046_))))
                (let () (declare (not safe)) (_K5795657973_)))))))
    (define append1!
      (lambda (_l57945_ _x57946_)
        (let ((_l257948_ (let () (declare (not safe)) (cons _x57946_ '()))))
          (if (let () (declare (not safe)) (pair? _l57945_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l57945_))
               _l257948_)
              _l257948_))))
    (define append-reverse
      (lambda (_rev-head57942_ _tail57943_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail57943_ _rev-head57942_))))
    (define andmap1
      (lambda (_f57902_ _lst57903_)
        (let _lp57905_ ((_rest57907_ _lst57903_))
          (let* ((_rest5790857916_ _rest57907_)
                 (_else5791057924_ (lambda () '#t))
                 (_K5791257930_
                  (lambda (_rest57927_ _x57928_)
                    (if (_f57902_ _x57928_)
                        (let () (declare (not safe)) (_lp57905_ _rest57927_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5790857916_))
                (let ((_hd5791357933_
                       (let () (declare (not safe)) (##car _rest5790857916_)))
                      (_tl5791457935_
                       (let () (declare (not safe)) (##cdr _rest5790857916_))))
                  (let* ((_x57938_ _hd5791357933_)
                         (_rest57940_ _tl5791457935_))
                    (declare (not safe))
                    (_K5791257930_ _rest57940_ _x57938_)))
                (let () (declare (not safe)) (_else5791057924_)))))))
    (define andmap2
      (lambda (_f57827_ _lst157828_ _lst257829_)
        (let _lp57831_ ((_rest157833_ _lst157828_) (_rest257834_ _lst257829_))
          (let* ((_rest15783557843_ _rest157833_)
                 (_else5783757851_ (lambda () '#t))
                 (_K5783957890_
                  (lambda (_rest157854_ _x157855_)
                    (let* ((_rest25785657864_ _rest257834_)
                           (_else5785857872_ (lambda () '#t))
                           (_K5786057878_
                            (lambda (_rest257875_ _x257876_)
                              (if (_f57827_ _x157855_ _x257876_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp57831_ _rest157854_ _rest257875_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25785657864_))
                          (let ((_hd5786157881_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25785657864_)))
                                (_tl5786257883_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25785657864_))))
                            (let* ((_x257886_ _hd5786157881_)
                                   (_rest257888_ _tl5786257883_))
                              (declare (not safe))
                              (_K5786057878_ _rest257888_ _x257886_)))
                          (let () (declare (not safe)) (_else5785857872_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15783557843_))
                (let ((_hd5784057893_
                       (let () (declare (not safe)) (##car _rest15783557843_)))
                      (_tl5784157895_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15783557843_))))
                  (let* ((_x157898_ _hd5784057893_)
                         (_rest157900_ _tl5784157895_))
                    (declare (not safe))
                    (_K5783957890_ _rest157900_ _x157898_)))
                (let () (declare (not safe)) (_else5783757851_)))))))
    (define andmap
      (lambda _g63322_
        (let ((_g63321_ (let () (declare (not safe)) (##length _g63322_))))
          (cond ((let () (declare (not safe)) (##fx= _g63321_ 2))
                 (apply (lambda (_f57815_ _lst57816_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f57815_ _lst57816_)))
                        _g63322_))
                ((let () (declare (not safe)) (##fx= _g63321_ 3))
                 (apply (lambda (_f57818_ _lst157819_ _lst257820_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f57818_ _lst157819_ _lst257820_)))
                        _g63322_))
                ((let () (declare (not safe)) (##fx>= _g63321_ 3))
                 (apply andmap* _g63322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g63322_))))))
    (define andmap*
      (lambda (_f57808_ . _rest57809_)
        (let _recur57811_ ((_rest57813_ _rest57809_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57813_))
              (if (apply _f57808_ (map car _rest57813_))
                  (let ((__tmp63323 (map cdr _rest57813_)))
                    (declare (not safe))
                    (_recur57811_ __tmp63323))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f57765_ _lst57766_)
        (let _lp57768_ ((_rest57770_ _lst57766_))
          (let* ((_rest5777157779_ _rest57770_)
                 (_else5777357787_ (lambda () '#f))
                 (_K5777557796_
                  (lambda (_rest57790_ _x57791_)
                    (let ((_$e57793_ (_f57765_ _x57791_)))
                      (if _$e57793_
                          _$e57793_
                          (let ()
                            (declare (not safe))
                            (_lp57768_ _rest57790_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5777157779_))
                (let ((_hd5777657799_
                       (let () (declare (not safe)) (##car _rest5777157779_)))
                      (_tl5777757801_
                       (let () (declare (not safe)) (##cdr _rest5777157779_))))
                  (let* ((_x57804_ _hd5777657799_)
                         (_rest57806_ _tl5777757801_))
                    (declare (not safe))
                    (_K5777557796_ _rest57806_ _x57804_)))
                (let () (declare (not safe)) (_else5777357787_)))))))
    (define ormap2
      (lambda (_f57687_ _lst157688_ _lst257689_)
        (let _lp57691_ ((_rest157693_ _lst157688_) (_rest257694_ _lst257689_))
          (let* ((_rest15769557703_ _rest157693_)
                 (_else5769757711_ (lambda () '#f))
                 (_K5769957753_
                  (lambda (_rest157714_ _x157715_)
                    (let* ((_rest25771657724_ _rest257694_)
                           (_else5771857732_ (lambda () '#f))
                           (_K5772057741_
                            (lambda (_rest257735_ _x257736_)
                              (let ((_$e57738_ (_f57687_ _x157715_ _x257736_)))
                                (if _$e57738_
                                    _$e57738_
                                    (let ()
                                      (declare (not safe))
                                      (_lp57691_
                                       _rest157714_
                                       _rest257735_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25771657724_))
                          (let ((_hd5772157744_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25771657724_)))
                                (_tl5772257746_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25771657724_))))
                            (let* ((_x257749_ _hd5772157744_)
                                   (_rest257751_ _tl5772257746_))
                              (declare (not safe))
                              (_K5772057741_ _rest257751_ _x257749_)))
                          (let () (declare (not safe)) (_else5771857732_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15769557703_))
                (let ((_hd5770057756_
                       (let () (declare (not safe)) (##car _rest15769557703_)))
                      (_tl5770157758_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15769557703_))))
                  (let* ((_x157761_ _hd5770057756_)
                         (_rest157763_ _tl5770157758_))
                    (declare (not safe))
                    (_K5769957753_ _rest157763_ _x157761_)))
                (let () (declare (not safe)) (_else5769757711_)))))))
    (define ormap
      (lambda _g63325_
        (let ((_g63324_ (let () (declare (not safe)) (##length _g63325_))))
          (cond ((let () (declare (not safe)) (##fx= _g63324_ 2))
                 (apply (lambda (_f57675_ _lst57676_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f57675_ _lst57676_)))
                        _g63325_))
                ((let () (declare (not safe)) (##fx= _g63324_ 3))
                 (apply (lambda (_f57678_ _lst157679_ _lst257680_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f57678_ _lst157679_ _lst257680_)))
                        _g63325_))
                ((let () (declare (not safe)) (##fx>= _g63324_ 3))
                 (apply ormap* _g63325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g63325_))))))
    (define ormap*
      (lambda (_f57665_ . _rest57666_)
        (let _recur57668_ ((_rest57670_ _rest57666_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57670_))
              (let ((_$e57672_ (apply _f57665_ (map car _rest57670_))))
                (if _$e57672_
                    _$e57672_
                    (let ((__tmp63326 (map cdr _rest57670_)))
                      (declare (not safe))
                      (_recur57668_ __tmp63326))))
              '#f))))
    (define filter
      (lambda (_f57623_ _lst57624_)
        (let _recur57626_ ((_lst57628_ _lst57624_))
          (let* ((_lst5762957637_ _lst57628_)
                 (_else5763157645_ (lambda () '()))
                 (_K5763357653_
                  (lambda (_rest57648_ _hd57649_)
                    (if (_f57623_ _hd57649_)
                        (let ((_tail57651_
                               (let ()
                                 (declare (not safe))
                                 (_recur57626_ _rest57648_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail57651_ _rest57648_))
                              _lst57628_
                              (let ()
                                (declare (not safe))
                                (cons _hd57649_ _tail57651_))))
                        (let ()
                          (declare (not safe))
                          (_recur57626_ _rest57648_))))))
            (if (let () (declare (not safe)) (##pair? _lst5762957637_))
                (let ((_hd5763457656_
                       (let () (declare (not safe)) (##car _lst5762957637_)))
                      (_tl5763557658_
                       (let () (declare (not safe)) (##cdr _lst5762957637_))))
                  (let* ((_hd57661_ _hd5763457656_)
                         (_rest57663_ _tl5763557658_))
                    (declare (not safe))
                    (_K5763357653_ _rest57663_ _hd57661_)))
                (let () (declare (not safe)) (_else5763157645_)))))))
    (define filter-map1
      (lambda (_f57578_ _lst57579_)
        (let _recur57581_ ((_rest57583_ _lst57579_))
          (let* ((_rest5758457592_ _rest57583_)
                 (_else5758657600_ (lambda () '()))
                 (_K5758857611_
                  (lambda (_rest57603_ _x57604_)
                    (let ((_$e57606_ (_f57578_ _x57604_)))
                      (if _$e57606_
                          ((lambda (_r57609_)
                             (let ((__tmp63327
                                    (let ()
                                      (declare (not safe))
                                      (_recur57581_ _rest57603_))))
                               (declare (not safe))
                               (cons _r57609_ __tmp63327)))
                           _$e57606_)
                          (let ()
                            (declare (not safe))
                            (_recur57581_ _rest57603_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5758457592_))
                (let ((_hd5758957614_
                       (let () (declare (not safe)) (##car _rest5758457592_)))
                      (_tl5759057616_
                       (let () (declare (not safe)) (##cdr _rest5758457592_))))
                  (let* ((_x57619_ _hd5758957614_)
                         (_rest57621_ _tl5759057616_))
                    (declare (not safe))
                    (_K5758857611_ _rest57621_ _x57619_)))
                (let () (declare (not safe)) (_else5758657600_)))))))
    (define filter-map2
      (lambda (_f57498_ _lst157499_ _lst257500_)
        (let _recur57502_ ((_rest157504_ _lst157499_)
                           (_rest257505_ _lst257500_))
          (let* ((_rest15750657514_ _rest157504_)
                 (_else5750857522_ (lambda () '()))
                 (_K5751057566_
                  (lambda (_rest157525_ _x157526_)
                    (let* ((_rest25752757535_ _rest257505_)
                           (_else5752957543_ (lambda () '()))
                           (_K5753157554_
                            (lambda (_rest257546_ _x257547_)
                              (let ((_$e57549_ (_f57498_ _x157526_ _x257547_)))
                                (if _$e57549_
                                    ((lambda (_r57552_)
                                       (let ((__tmp63328
                                              (let ()
                                                (declare (not safe))
                                                (_recur57502_
                                                 _rest157525_
                                                 _rest257546_))))
                                         (declare (not safe))
                                         (cons _r57552_ __tmp63328)))
                                     _$e57549_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur57502_
                                       _rest157525_
                                       _rest257546_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25752757535_))
                          (let ((_hd5753257557_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25752757535_)))
                                (_tl5753357559_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25752757535_))))
                            (let* ((_x257562_ _hd5753257557_)
                                   (_rest257564_ _tl5753357559_))
                              (declare (not safe))
                              (_K5753157554_ _rest257564_ _x257562_)))
                          (let () (declare (not safe)) (_else5752957543_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15750657514_))
                (let ((_hd5751157569_
                       (let () (declare (not safe)) (##car _rest15750657514_)))
                      (_tl5751257571_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15750657514_))))
                  (let* ((_x157574_ _hd5751157569_)
                         (_rest157576_ _tl5751257571_))
                    (declare (not safe))
                    (_K5751057566_ _rest157576_ _x157574_)))
                (let () (declare (not safe)) (_else5750857522_)))))))
    (define filter-map
      (lambda _g63330_
        (let ((_g63329_ (let () (declare (not safe)) (##length _g63330_))))
          (cond ((let () (declare (not safe)) (##fx= _g63329_ 2))
                 (apply (lambda (_f57486_ _lst57487_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f57486_ _lst57487_)))
                        _g63330_))
                ((let () (declare (not safe)) (##fx= _g63329_ 3))
                 (apply (lambda (_f57489_ _lst157490_ _lst257491_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f57489_ _lst157490_ _lst257491_)))
                        _g63330_))
                ((let () (declare (not safe)) (##fx>= _g63329_ 3))
                 (apply filter-map* _g63330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g63330_))))))
    (define filter-map*
      (lambda (_f57474_ . _rest57475_)
        (let _recur57477_ ((_rest57479_ _rest57475_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57479_))
              (let ((_$e57481_ (apply _f57474_ (map car _rest57479_))))
                (if _$e57481_
                    ((lambda (_r57484_)
                       (let ((__tmp63332
                              (let ((__tmp63333 (map cdr _rest57479_)))
                                (declare (not safe))
                                (_recur57477_ __tmp63333))))
                         (declare (not safe))
                         (cons _r57484_ __tmp63332)))
                     _$e57481_)
                    (let ((__tmp63331 (map cdr _rest57479_)))
                      (declare (not safe))
                      (_recur57477_ __tmp63331))))
              '()))))
    (define iota__%
      (lambda (_count57442_ _start57443_ _step57444_)
        (if (fixnum? _count57442_)
            '#!void
            (error '"expected fixnum" _count57442_))
        (if (let () (declare (not safe)) (number? _start57443_))
            '#!void
            (error '"expected number" _start57443_))
        (if (let () (declare (not safe)) (number? _step57444_))
            '#!void
            (error '"expected number" _step57444_))
        (let ((_root57446_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp57448_ ((_i57450_ '0)
                          (_x57451_ _start57443_)
                          (_tl57452_ _root57446_))
            (if (let () (declare (not safe)) (##fx< _i57450_ _count57442_))
                (let ((_tl*57454_
                       (let () (declare (not safe)) (cons _x57451_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl57452_ _tl*57454_))
                  (let ((__tmp63335
                         (let () (declare (not safe)) (##fx+ _i57450_ '1)))
                        (__tmp63334 (+ _x57451_ _step57444_)))
                    (declare (not safe))
                    (_lp57448_ __tmp63335 __tmp63334 _tl*57454_)))
                (let () (declare (not safe)) (##cdr _root57446_)))))))
    (define iota__0
      (lambda (_count57459_)
        (let* ((_start57461_ '0) (_step57463_ '1))
          (declare (not safe))
          (iota__% _count57459_ _start57461_ _step57463_))))
    (define iota__1
      (lambda (_count57465_ _start57466_)
        (let ((_step57468_ '1))
          (declare (not safe))
          (iota__% _count57465_ _start57466_ _step57468_))))
    (define iota
      (lambda _g63337_
        (let ((_g63336_ (let () (declare (not safe)) (##length _g63337_))))
          (cond ((let () (declare (not safe)) (##fx= _g63336_ 1))
                 (apply (lambda (_count57459_)
                          (let () (declare (not safe)) (iota__0 _count57459_)))
                        _g63337_))
                ((let () (declare (not safe)) (##fx= _g63336_ 2))
                 (apply (lambda (_count57465_ _start57466_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count57465_ _start57466_)))
                        _g63337_))
                ((let () (declare (not safe)) (##fx= _g63336_ 3))
                 (apply (lambda (_count57470_ _start57471_ _step57472_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count57470_ _start57471_ _step57472_)))
                        _g63337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g63337_))))))
    (define last-pair
      (lambda (_lst57416_)
        (let* ((_lst5741757424_ _lst57416_)
               (_E5741957428_
                (lambda () (error '"No clause matching" _lst5741757424_)))
               (_K5742057433_
                (lambda (_rest57431_)
                  (if (let () (declare (not safe)) (pair? _rest57431_))
                      (let () (declare (not safe)) (last-pair _rest57431_))
                      _lst57416_))))
          (if (let () (declare (not safe)) (##pair? _lst5741757424_))
              (let* ((_tl5742257436_
                      (let () (declare (not safe)) (##cdr _lst5741757424_)))
                     (_rest57439_ _tl5742257436_))
                (declare (not safe))
                (_K5742057433_ _rest57439_))
              (let () (declare (not safe)) (_E5741957428_))))))
    (define last
      (lambda (_lst57414_)
        (car (let () (declare (not safe)) (last-pair _lst57414_)))))
    (define assgetq__%
      (lambda (_key57392_ _lst57394_ _default57396_)
        (let ((_$e57399_
               (if (let () (declare (not safe)) (pair? _lst57394_))
                   (assq _key57392_ _lst57394_)
                   '#f)))
          (if _$e57399_
              (cdr _$e57399_)
              (if (let () (declare (not safe)) (procedure? _default57396_))
                  (_default57396_ _key57392_)
                  _default57396_)))))
    (define assgetq__0
      (lambda (_key57405_ _lst57406_)
        (let ((_default57408_ '#f))
          (declare (not safe))
          (assgetq__% _key57405_ _lst57406_ _default57408_))))
    (define assgetq
      (lambda _g63339_
        (let ((_g63338_ (let () (declare (not safe)) (##length _g63339_))))
          (cond ((let () (declare (not safe)) (##fx= _g63338_ 2))
                 (apply (lambda (_key57405_ _lst57406_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key57405_ _lst57406_)))
                        _g63339_))
                ((let () (declare (not safe)) (##fx= _g63338_ 3))
                 (apply (lambda (_key57410_ _lst57411_ _default57412_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key57410_ _lst57411_ _default57412_)))
                        _g63339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g63339_))))))
    (define assgetv__%
      (lambda (_key57369_ _lst57371_ _default57373_)
        (let ((_$e57376_
               (if (let () (declare (not safe)) (pair? _lst57371_))
                   (assv _key57369_ _lst57371_)
                   '#f)))
          (if _$e57376_
              (cdr _$e57376_)
              (if (let () (declare (not safe)) (procedure? _default57373_))
                  (_default57373_ _key57369_)
                  _default57373_)))))
    (define assgetv__0
      (lambda (_key57382_ _lst57383_)
        (let ((_default57385_ '#f))
          (declare (not safe))
          (assgetv__% _key57382_ _lst57383_ _default57385_))))
    (define assgetv
      (lambda _g63341_
        (let ((_g63340_ (let () (declare (not safe)) (##length _g63341_))))
          (cond ((let () (declare (not safe)) (##fx= _g63340_ 2))
                 (apply (lambda (_key57382_ _lst57383_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key57382_ _lst57383_)))
                        _g63341_))
                ((let () (declare (not safe)) (##fx= _g63340_ 3))
                 (apply (lambda (_key57387_ _lst57388_ _default57389_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key57387_ _lst57388_ _default57389_)))
                        _g63341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g63341_))))))
    (define assget__%
      (lambda (_key57346_ _lst57348_ _default57350_)
        (let ((_$e57353_
               (if (let () (declare (not safe)) (pair? _lst57348_))
                   (assoc _key57346_ _lst57348_)
                   '#f)))
          (if _$e57353_
              (cdr _$e57353_)
              (if (let () (declare (not safe)) (procedure? _default57350_))
                  (_default57350_ _key57346_)
                  _default57350_)))))
    (define assget__0
      (lambda (_key57359_ _lst57360_)
        (let ((_default57362_ '#f))
          (declare (not safe))
          (assget__% _key57359_ _lst57360_ _default57362_))))
    (define assget
      (lambda _g63343_
        (let ((_g63342_ (let () (declare (not safe)) (##length _g63343_))))
          (cond ((let () (declare (not safe)) (##fx= _g63342_ 2))
                 (apply (lambda (_key57359_ _lst57360_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key57359_ _lst57360_)))
                        _g63343_))
                ((let () (declare (not safe)) (##fx= _g63342_ 3))
                 (apply (lambda (_key57364_ _lst57365_ _default57366_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key57364_ _lst57365_ _default57366_)))
                        _g63343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g63343_))))))
    (define pgetq__%
      (lambda (_key57275_ _lst57277_ _default57279_)
        (let _lp57282_ ((_rest57285_ _lst57277_))
          (let* ((_rest5728757297_ _rest57285_)
                 (_else5728957305_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57279_))
                        (_default57279_ _key57275_)
                        _default57279_)))
                 (_K5729157314_
                  (lambda (_rest57308_ _v57309_ _k57311_)
                    (if (let () (declare (not safe)) (eq? _k57311_ _key57275_))
                        _v57309_
                        (let ()
                          (declare (not safe))
                          (_lp57282_ _rest57308_))))))
            (if (let () (declare (not safe)) (##pair? _rest5728757297_))
                (let ((_hd5729257317_
                       (let () (declare (not safe)) (##car _rest5728757297_)))
                      (_tl5729357319_
                       (let () (declare (not safe)) (##cdr _rest5728757297_))))
                  (let ((_k57322_ _hd5729257317_))
                    (if (let () (declare (not safe)) (##pair? _tl5729357319_))
                        (let ((_hd5729457324_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5729357319_)))
                              (_tl5729557326_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5729357319_))))
                          (let* ((_v57329_ _hd5729457324_)
                                 (_rest57331_ _tl5729557326_))
                            (declare (not safe))
                            (_K5729157314_ _rest57331_ _v57329_ _k57322_)))
                        (let () (declare (not safe)) (_else5728957305_)))))
                (let () (declare (not safe)) (_else5728957305_)))))))
    (define pgetq__0
      (lambda (_key57336_ _lst57337_)
        (let ((_default57339_ '#f))
          (declare (not safe))
          (pgetq__% _key57336_ _lst57337_ _default57339_))))
    (define pgetq
      (lambda _g63345_
        (let ((_g63344_ (let () (declare (not safe)) (##length _g63345_))))
          (cond ((let () (declare (not safe)) (##fx= _g63344_ 2))
                 (apply (lambda (_key57336_ _lst57337_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key57336_ _lst57337_)))
                        _g63345_))
                ((let () (declare (not safe)) (##fx= _g63344_ 3))
                 (apply (lambda (_key57341_ _lst57342_ _default57343_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key57341_ _lst57342_ _default57343_)))
                        _g63345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g63345_))))))
    (define pgetv__%
      (lambda (_key57204_ _lst57206_ _default57208_)
        (let _lp57211_ ((_rest57214_ _lst57206_))
          (let* ((_rest5721657226_ _rest57214_)
                 (_else5721857234_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57208_))
                        (_default57208_ _key57204_)
                        _default57208_)))
                 (_K5722057243_
                  (lambda (_rest57237_ _v57238_ _k57240_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k57240_ _key57204_))
                        _v57238_
                        (let ()
                          (declare (not safe))
                          (_lp57211_ _rest57237_))))))
            (if (let () (declare (not safe)) (##pair? _rest5721657226_))
                (let ((_hd5722157246_
                       (let () (declare (not safe)) (##car _rest5721657226_)))
                      (_tl5722257248_
                       (let () (declare (not safe)) (##cdr _rest5721657226_))))
                  (let ((_k57251_ _hd5722157246_))
                    (if (let () (declare (not safe)) (##pair? _tl5722257248_))
                        (let ((_hd5722357253_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5722257248_)))
                              (_tl5722457255_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5722257248_))))
                          (let* ((_v57258_ _hd5722357253_)
                                 (_rest57260_ _tl5722457255_))
                            (declare (not safe))
                            (_K5722057243_ _rest57260_ _v57258_ _k57251_)))
                        (let () (declare (not safe)) (_else5721857234_)))))
                (let () (declare (not safe)) (_else5721857234_)))))))
    (define pgetv__0
      (lambda (_key57265_ _lst57266_)
        (let ((_default57268_ '#f))
          (declare (not safe))
          (pgetv__% _key57265_ _lst57266_ _default57268_))))
    (define pgetv
      (lambda _g63347_
        (let ((_g63346_ (let () (declare (not safe)) (##length _g63347_))))
          (cond ((let () (declare (not safe)) (##fx= _g63346_ 2))
                 (apply (lambda (_key57265_ _lst57266_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key57265_ _lst57266_)))
                        _g63347_))
                ((let () (declare (not safe)) (##fx= _g63346_ 3))
                 (apply (lambda (_key57270_ _lst57271_ _default57272_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key57270_ _lst57271_ _default57272_)))
                        _g63347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g63347_))))))
    (define pget__%
      (lambda (_key57133_ _lst57135_ _default57137_)
        (let _lp57140_ ((_rest57143_ _lst57135_))
          (let* ((_rest5714557155_ _rest57143_)
                 (_else5714757163_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57137_))
                        (_default57137_ _key57133_)
                        _default57137_)))
                 (_K5714957172_
                  (lambda (_rest57166_ _v57167_ _k57169_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k57169_ _key57133_))
                        _v57167_
                        (let ()
                          (declare (not safe))
                          (_lp57140_ _rest57166_))))))
            (if (let () (declare (not safe)) (##pair? _rest5714557155_))
                (let ((_hd5715057175_
                       (let () (declare (not safe)) (##car _rest5714557155_)))
                      (_tl5715157177_
                       (let () (declare (not safe)) (##cdr _rest5714557155_))))
                  (let ((_k57180_ _hd5715057175_))
                    (if (let () (declare (not safe)) (##pair? _tl5715157177_))
                        (let ((_hd5715257182_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5715157177_)))
                              (_tl5715357184_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5715157177_))))
                          (let* ((_v57187_ _hd5715257182_)
                                 (_rest57189_ _tl5715357184_))
                            (declare (not safe))
                            (_K5714957172_ _rest57189_ _v57187_ _k57180_)))
                        (let () (declare (not safe)) (_else5714757163_)))))
                (let () (declare (not safe)) (_else5714757163_)))))))
    (define pget__0
      (lambda (_key57194_ _lst57195_)
        (let ((_default57197_ '#f))
          (declare (not safe))
          (pget__% _key57194_ _lst57195_ _default57197_))))
    (define pget
      (lambda _g63349_
        (let ((_g63348_ (let () (declare (not safe)) (##length _g63349_))))
          (cond ((let () (declare (not safe)) (##fx= _g63348_ 2))
                 (apply (lambda (_key57194_ _lst57195_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key57194_ _lst57195_)))
                        _g63349_))
                ((let () (declare (not safe)) (##fx= _g63348_ 3))
                 (apply (lambda (_key57199_ _lst57200_ _default57201_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key57199_ _lst57200_ _default57201_)))
                        _g63349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g63349_))))))
    (define find
      (lambda (_pred57126_ _lst57127_)
        (let ((_$e57129_
               (let () (declare (not safe)) (memf _pred57126_ _lst57127_))))
          (if _$e57129_ (car _$e57129_) '#f))))
    (define memf
      (lambda (_proc57086_ _lst57087_)
        (let _lp57089_ ((_rest57091_ _lst57087_))
          (let* ((_rest5709257100_ _rest57091_)
                 (_else5709457108_ (lambda () '#f))
                 (_K5709657114_
                  (lambda (_tl57111_ _hd57112_)
                    (if (_proc57086_ _hd57112_)
                        _rest57091_
                        (let () (declare (not safe)) (_lp57089_ _tl57111_))))))
            (if (let () (declare (not safe)) (##pair? _rest5709257100_))
                (let ((_hd5709757117_
                       (let () (declare (not safe)) (##car _rest5709257100_)))
                      (_tl5709857119_
                       (let () (declare (not safe)) (##cdr _rest5709257100_))))
                  (let* ((_hd57122_ _hd5709757117_) (_tl57124_ _tl5709857119_))
                    (declare (not safe))
                    (_K5709657114_ _tl57124_ _hd57122_)))
                (let () (declare (not safe)) (_else5709457108_)))))))
    (define remove1
      (lambda (_el57039_ _lst57041_)
        (let _lp57044_ ((_rest57047_ _lst57041_) (_r57049_ '()))
          (let* ((_rest5705157059_ _rest57047_)
                 (_else5705357067_ (lambda () _lst57041_))
                 (_K5705557074_
                  (lambda (_rest57070_ _hd57071_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el57039_ _hd57071_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57070_ _r57049_))
                        (let ((__tmp63350
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57071_ _r57049_))))
                          (declare (not safe))
                          (_lp57044_ _rest57070_ __tmp63350))))))
            (if (let () (declare (not safe)) (##pair? _rest5705157059_))
                (let ((_hd5705657077_
                       (let () (declare (not safe)) (##car _rest5705157059_)))
                      (_tl5705757079_
                       (let () (declare (not safe)) (##cdr _rest5705157059_))))
                  (let* ((_hd57082_ _hd5705657077_)
                         (_rest57084_ _tl5705757079_))
                    (declare (not safe))
                    (_K5705557074_ _rest57084_ _hd57082_)))
                (let () (declare (not safe)) (_else5705357067_)))))))
    (define remv
      (lambda (_el56992_ _lst56994_)
        (let _lp56997_ ((_rest57000_ _lst56994_) (_r57002_ '()))
          (let* ((_rest5700457012_ _rest57000_)
                 (_else5700657020_ (lambda () _lst56994_))
                 (_K5700857027_
                  (lambda (_rest57023_ _hd57024_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el56992_ _hd57024_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57023_ _r57002_))
                        (let ((__tmp63351
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57024_ _r57002_))))
                          (declare (not safe))
                          (_lp56997_ _rest57023_ __tmp63351))))))
            (if (let () (declare (not safe)) (##pair? _rest5700457012_))
                (let ((_hd5700957030_
                       (let () (declare (not safe)) (##car _rest5700457012_)))
                      (_tl5701057032_
                       (let () (declare (not safe)) (##cdr _rest5700457012_))))
                  (let* ((_hd57035_ _hd5700957030_)
                         (_rest57037_ _tl5701057032_))
                    (declare (not safe))
                    (_K5700857027_ _rest57037_ _hd57035_)))
                (let () (declare (not safe)) (_else5700657020_)))))))
    (define remq
      (lambda (_el56945_ _lst56947_)
        (let _lp56950_ ((_rest56953_ _lst56947_) (_r56955_ '()))
          (let* ((_rest5695756965_ _rest56953_)
                 (_else5695956973_ (lambda () _lst56947_))
                 (_K5696156980_
                  (lambda (_rest56976_ _hd56977_)
                    (if (let () (declare (not safe)) (eq? _el56945_ _hd56977_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56976_ _r56955_))
                        (let ((__tmp63352
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56977_ _r56955_))))
                          (declare (not safe))
                          (_lp56950_ _rest56976_ __tmp63352))))))
            (if (let () (declare (not safe)) (##pair? _rest5695756965_))
                (let ((_hd5696256983_
                       (let () (declare (not safe)) (##car _rest5695756965_)))
                      (_tl5696356985_
                       (let () (declare (not safe)) (##cdr _rest5695756965_))))
                  (let* ((_hd56988_ _hd5696256983_)
                         (_rest56990_ _tl5696356985_))
                    (declare (not safe))
                    (_K5696156980_ _rest56990_ _hd56988_)))
                (let () (declare (not safe)) (_else5695956973_)))))))
    (define remf
      (lambda (_proc56904_ _lst56905_)
        (let _lp56907_ ((_rest56909_ _lst56905_) (_r56910_ '()))
          (let* ((_rest5691156919_ _rest56909_)
                 (_else5691356927_ (lambda () _lst56905_))
                 (_K5691556933_
                  (lambda (_rest56930_ _hd56931_)
                    (if (_proc56904_ _hd56931_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest56930_ _r56910_))
                        (let ((__tmp63353
                               (let ()
                                 (declare (not safe))
                                 (cons _hd56931_ _r56910_))))
                          (declare (not safe))
                          (_lp56907_ _rest56930_ __tmp63353))))))
            (if (let () (declare (not safe)) (##pair? _rest5691156919_))
                (let ((_hd5691656936_
                       (let () (declare (not safe)) (##car _rest5691156919_)))
                      (_tl5691756938_
                       (let () (declare (not safe)) (##cdr _rest5691156919_))))
                  (let* ((_hd56941_ _hd5691656936_)
                         (_rest56943_ _tl5691756938_))
                    (declare (not safe))
                    (_K5691556933_ _rest56943_ _hd56941_)))
                (let () (declare (not safe)) (_else5691356927_)))))))
    (define 1+ (lambda (_x56902_) (+ _x56902_ '1)))
    (define 1- (lambda (_x56900_) (- _x56900_ '1)))
    (define fx1+ (lambda (_x56898_) (fx+ _x56898_ '1)))
    (define fx1- (lambda (_x56896_) (fx- _x56896_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x56894_)
        (if (fixnum? _x56894_)
            (let () (declare (not safe)) (##fx>= _x56894_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x56892_)
        (if (fixnum? _x56892_)
            (let () (declare (not safe)) (##fx> _x56892_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x56890_) (let () (declare (not safe)) (eq? _x56890_ '0))))
    (define fx<0?
      (lambda (_x56888_)
        (if (fixnum? _x56888_)
            (let () (declare (not safe)) (##fx< _x56888_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x56886_)
        (if (fixnum? _x56886_)
            (let () (declare (not safe)) (##fx<= _x56886_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x56884_)
        (if (let () (declare (not safe)) (symbol? _x56884_))
            (let ((__tmp63354 (uninterned-symbol? _x56884_)))
              (declare (not safe))
              (not __tmp63354))
            '#f)))
    (define display-as-string
      (lambda (_x56856_ _port56857_)
        (if (or (let () (declare (not safe)) (string? _x56856_))
                (let () (declare (not safe)) (symbol? _x56856_))
                (keyword? _x56856_)
                (let () (declare (not safe)) (number? _x56856_))
                (let () (declare (not safe)) (char? _x56856_)))
            (display _x56856_ _port56857_)
            (if (let () (declare (not safe)) (pair? _x56856_))
                (begin
                  (let ((__tmp63355 (car _x56856_)))
                    (declare (not safe))
                    (display-as-string __tmp63355 _port56857_))
                  (let ((__tmp63356 (cdr _x56856_)))
                    (declare (not safe))
                    (display-as-string __tmp63356 _port56857_)))
                (if (let () (declare (not safe)) (vector? _x56856_))
                    (vector-for-each
                     (lambda (_g5687056872_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5687056872_ _port56857_)))
                     _x56856_)
                    (if (or (let () (declare (not safe)) (null? _x56856_))
                            (let ()
                              (declare (not safe))
                              (eq? _x56856_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x56856_))
                            (let () (declare (not safe)) (boolean? _x56856_)))
                        '#!void
                        (error '"cannot convert as string" _x56856_)))))))
    (define as-string__0
      (lambda (_x56844_)
        (if (let () (declare (not safe)) (string? _x56844_))
            _x56844_
            (if (let () (declare (not safe)) (symbol? _x56844_))
                (symbol->string _x56844_)
                (if (keyword? _x56844_)
                    (keyword->string _x56844_)
                    (call-with-output-string
                     '()
                     (lambda (_g5684556847_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x56844_ _g5684556847_)))))))))
    (define as-string__1
      (lambda _args56850_
        (call-with-output-string
         '()
         (lambda (_g5685156853_)
           (let ()
             (declare (not safe))
             (display-as-string _args56850_ _g5685156853_))))))
    (define as-string
      (lambda _g63358_
        (let ((_g63357_ (let () (declare (not safe)) (##length _g63358_))))
          (cond ((let () (declare (not safe)) (##fx= _g63357_ 1))
                 (apply (lambda (_x56844_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x56844_)))
                        _g63358_))
                (#t (apply as-string__1 _g63358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g63358_))))))
    (define make-symbol__0
      (lambda (_x56840_)
        (if (interned-symbol? _x56840_)
            _x56840_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x56840_))))))
    (define make-symbol__1
      (lambda _args56842_ (string->symbol (apply as-string _args56842_))))
    (define make-symbol
      (lambda _g63360_
        (let ((_g63359_ (let () (declare (not safe)) (##length _g63360_))))
          (cond ((let () (declare (not safe)) (##fx= _g63359_ 1))
                 (apply (lambda (_x56840_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x56840_)))
                        _g63360_))
                (#t (apply make-symbol__1 _g63360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g63360_))))))
    (define make-keyword__0
      (lambda (_x56836_)
        (if (interned-keyword? _x56836_)
            _x56836_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x56836_))))))
    (define make-keyword__1
      (lambda _args56838_ (string->keyword (apply as-string _args56838_))))
    (define make-keyword
      (lambda _g63362_
        (let ((_g63361_ (let () (declare (not safe)) (##length _g63362_))))
          (cond ((let () (declare (not safe)) (##fx= _g63361_ 1))
                 (apply (lambda (_x56836_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x56836_)))
                        _g63362_))
                (#t (apply make-keyword__1 _g63362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g63362_))))))
    (define interned-keyword?
      (lambda (_x56834_)
        (if (keyword? _x56834_)
            (let ((__tmp63363 (uninterned-keyword? _x56834_)))
              (declare (not safe))
              (not __tmp63363))
            '#f)))
    (define symbol->keyword
      (lambda (_sym56832_)
        ((if (uninterned-symbol? _sym56832_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym56832_))))
    (define keyword->symbol
      (lambda (_kw56830_)
        ((if (uninterned-keyword? _kw56830_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw56830_))))
    (define bytes->string__%
      (lambda (_bstr56808_ _enc56809_)
        (if (let () (declare (not safe)) (eq? _enc56809_ 'UTF-8))
            (utf8->string _bstr56808_)
            (let* ((_in56811_
                    (open-input-u8vector
                     (let ((__tmp63364
                            (let ((__tmp63365
                                   (let ((__tmp63366
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr56808_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp63366))))
                              (declare (not safe))
                              (cons _enc56809_ __tmp63365))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp63364))))
                   (_len56813_ (u8vector-length _bstr56808_))
                   (_out56815_ (make-string _len56813_))
                   (_n56817_
                    (read-substring _out56815_ '0 _len56813_ _in56811_)))
              (string-shrink! _out56815_ _n56817_)
              _out56815_))))
    (define bytes->string__0
      (lambda (_bstr56823_)
        (let ((_enc56825_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr56823_ _enc56825_))))
    (define bytes->string
      (lambda _g63368_
        (let ((_g63367_ (let () (declare (not safe)) (##length _g63368_))))
          (cond ((let () (declare (not safe)) (##fx= _g63367_ 1))
                 (apply (lambda (_bstr56823_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr56823_)))
                        _g63368_))
                ((let () (declare (not safe)) (##fx= _g63367_ 2))
                 (apply (lambda (_bstr56827_ _enc56828_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr56827_ _enc56828_)))
                        _g63368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g63368_))))))
    (define string->bytes__%
      (lambda (_str56794_ _enc56795_)
        (if (let () (declare (not safe)) (eq? _enc56795_ 'UTF-8))
            (string->utf8 _str56794_)
            (substring->bytes
             _str56794_
             '0
             (string-length _str56794_)
             _enc56795_))))
    (define string->bytes__0
      (lambda (_str56800_)
        (let ((_enc56802_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str56800_ _enc56802_))))
    (define string->bytes
      (lambda _g63370_
        (let ((_g63369_ (let () (declare (not safe)) (##length _g63370_))))
          (cond ((let () (declare (not safe)) (##fx= _g63369_ 1))
                 (apply (lambda (_str56800_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str56800_)))
                        _g63370_))
                ((let () (declare (not safe)) (##fx= _g63369_ 2))
                 (apply (lambda (_str56804_ _enc56805_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str56804_ _enc56805_)))
                        _g63370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g63370_))))))
    (define substring->bytes__%
      (lambda (_str56772_ _start56773_ _end56774_ _enc56775_)
        (if (let () (declare (not safe)) (eq? _enc56775_ 'UTF-8))
            (string->utf8 _str56772_ _start56773_ _end56774_)
            (let ((_out56777_
                   (open-output-u8vector
                    (let ((__tmp63371
                           (let ()
                             (declare (not safe))
                             (cons _enc56775_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp63371)))))
              (write-substring _str56772_ _start56773_ _end56774_ _out56777_)
              (get-output-u8vector _out56777_)))))
    (define substring->bytes__0
      (lambda (_str56782_ _start56783_ _end56784_)
        (let ((_enc56786_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str56782_
           _start56783_
           _end56784_
           _enc56786_))))
    (define substring->bytes
      (lambda _g63373_
        (let ((_g63372_ (let () (declare (not safe)) (##length _g63373_))))
          (cond ((let () (declare (not safe)) (##fx= _g63372_ 3))
                 (apply (lambda (_str56782_ _start56783_ _end56784_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str56782_
                             _start56783_
                             _end56784_)))
                        _g63373_))
                ((let () (declare (not safe)) (##fx= _g63372_ 4))
                 (apply (lambda (_str56788_ _start56789_ _end56790_ _enc56791_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str56788_
                             _start56789_
                             _end56790_
                             _enc56791_)))
                        _g63373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g63373_))))))
    (define string-empty?
      (lambda (_str56769_)
        (let ((__tmp63374 (string-length _str56769_)))
          (declare (not safe))
          (##fxzero? __tmp63374))))
    (define string-prefix?
      (lambda (_prefix56759_ _str56760_)
        (let ((_str-len56762_ (string-length _str56760_))
              (_prefix-len56763_ (string-length _prefix56759_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len56763_ _str-len56762_))
              (let _lp56765_ ((_i56767_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i56767_ _prefix-len56763_))
                    (if (let ((__tmp63377
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str56760_ _i56767_)))
                              (__tmp63376
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix56759_ _i56767_))))
                          (declare (not safe))
                          (eq? __tmp63377 __tmp63376))
                        (let ((__tmp63375
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i56767_ '1))))
                          (declare (not safe))
                          (_lp56765_ __tmp63375))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str56737_ _char56738_ _start56739_)
        (let ((_len56741_ (string-length _str56737_)))
          (let _lp56743_ ((_k56745_ _start56739_))
            (if (let () (declare (not safe)) (##fx< _k56745_ _len56741_))
                (if (let ((__tmp63379
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56737_ _k56745_))))
                      (declare (not safe))
                      (eq? _char56738_ __tmp63379))
                    _k56745_
                    (let ((__tmp63378
                           (let () (declare (not safe)) (##fx+ _k56745_ '1))))
                      (declare (not safe))
                      (_lp56743_ __tmp63378)))
                '#f)))))
    (define string-index__0
      (lambda (_str56750_ _char56751_)
        (let ((_start56753_ '0))
          (declare (not safe))
          (string-index__% _str56750_ _char56751_ _start56753_))))
    (define string-index
      (lambda _g63381_
        (let ((_g63380_ (let () (declare (not safe)) (##length _g63381_))))
          (cond ((let () (declare (not safe)) (##fx= _g63380_ 2))
                 (apply (lambda (_str56750_ _char56751_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str56750_ _char56751_)))
                        _g63381_))
                ((let () (declare (not safe)) (##fx= _g63380_ 3))
                 (apply (lambda (_str56755_ _char56756_ _start56757_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str56755_
                             _char56756_
                             _start56757_)))
                        _g63381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g63381_))))))
    (define string-rindex__%
      (lambda (_str56708_ _char56709_ _start56710_)
        (let* ((_len56712_ (string-length _str56708_))
               (_start56717_
                (let ((_$e56714_ _start56710_))
                  (if _$e56714_
                      _$e56714_
                      (let () (declare (not safe)) (##fx- _len56712_ '1))))))
          (let _lp56720_ ((_k56722_ _start56717_))
            (if (let () (declare (not safe)) (##fx>= _k56722_ '0))
                (if (let ((__tmp63383
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56708_ _k56722_))))
                      (declare (not safe))
                      (eq? _char56709_ __tmp63383))
                    _k56722_
                    (let ((__tmp63382
                           (let () (declare (not safe)) (##fx- _k56722_ '1))))
                      (declare (not safe))
                      (_lp56720_ __tmp63382)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str56727_ _char56728_)
        (let ((_start56730_ '#f))
          (declare (not safe))
          (string-rindex__% _str56727_ _char56728_ _start56730_))))
    (define string-rindex
      (lambda _g63385_
        (let ((_g63384_ (let () (declare (not safe)) (##length _g63385_))))
          (cond ((let () (declare (not safe)) (##fx= _g63384_ 2))
                 (apply (lambda (_str56727_ _char56728_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str56727_ _char56728_)))
                        _g63385_))
                ((let () (declare (not safe)) (##fx= _g63384_ 3))
                 (apply (lambda (_str56732_ _char56733_ _start56734_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str56732_
                             _char56733_
                             _start56734_)))
                        _g63385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g63385_))))))
    (define string-split
      (lambda (_str56692_ _char56693_)
        (let ((_len56695_ (string-length _str56692_)))
          (let _lp56697_ ((_start56699_ '0) (_r56700_ '()))
            (let ((_$e56702_
                   (let ()
                     (declare (not safe))
                     (string-index _str56692_ _char56693_ _start56699_))))
              (if _$e56702_
                  ((lambda (_end56705_)
                     (let ((__tmp63389
                            (let ()
                              (declare (not safe))
                              (##fx+ _end56705_ '1)))
                           (__tmp63387
                            (let ((__tmp63388
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56692_
                                      _start56699_
                                      _end56705_))))
                              (declare (not safe))
                              (cons __tmp63388 _r56700_))))
                       (declare (not safe))
                       (_lp56697_ __tmp63389 __tmp63387)))
                   _$e56702_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start56699_ _len56695_))
                      (let ((__tmp63386
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56692_
                                      _start56699_
                                      _len56695_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp63386 _r56700_))
                      (reverse _r56700_))))))))
    (define string-join
      (lambda (_strs56597_ _join56598_)
        (letrec ((_join-length56600_
                  (lambda (_strs56651_ _jlen56652_)
                    (let _lp56654_ ((_rest56656_ _strs56651_) (_len56657_ '0))
                      (let* ((_rest5665856666_ _rest56656_)
                             (_else5666056674_ (lambda () '0))
                             (_K5666256680_
                              (lambda (_rest56677_ _hd56678_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd56678_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest56677_))
                                        (let ((__tmp63391
                                               (let ((__tmp63392
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd56678_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp63392
                                                        _jlen56652_
                                                        _len56657_))))
                                          (declare (not safe))
                                          (_lp56654_ _rest56677_ __tmp63391))
                                        (let ((__tmp63390
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd56678_))))
                                          (declare (not safe))
                                          (##fx+ __tmp63390 _len56657_)))
                                    (error '"expected string" _hd56678_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5665856666_))
                            (let ((_hd5666356683_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5665856666_)))
                                  (_tl5666456685_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5665856666_))))
                              (let* ((_hd56688_ _hd5666356683_)
                                     (_rest56690_ _tl5666456685_))
                                (declare (not safe))
                                (_K5666256680_ _rest56690_ _hd56688_)))
                            (let ()
                              (declare (not safe))
                              (_else5666056674_))))))))
          (let* ((_join56602_
                  (if (let () (declare (not safe)) (char? _join56598_))
                      (string _join56598_)
                      (if (let () (declare (not safe)) (string? _join56598_))
                          _join56598_
                          (error '"expected string or char" _join56598_))))
                 (_jlen56604_
                  (let () (declare (not safe)) (##string-length _join56602_)))
                 (_olen56606_
                  (let ()
                    (declare (not safe))
                    (_join-length56600_ _strs56597_ _jlen56604_)))
                 (_ostr56608_ (make-string _olen56606_)))
            (let _lp56611_ ((_rest56613_ _strs56597_) (_k56614_ '0))
              (let* ((_rest5661556623_ _rest56613_)
                     (_else5661756631_ (lambda () '""))
                     (_K5661956639_
                      (lambda (_rest56634_ _hd56635_)
                        (let ((_hdlen56637_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd56635_))))
                          (if (let () (declare (not safe)) (pair? _rest56634_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56635_
                                   '0
                                   _hdlen56637_
                                   _ostr56608_
                                   _k56614_))
                                (let ((__tmp63393
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56614_ _hdlen56637_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join56602_
                                   '0
                                   _jlen56604_
                                   _ostr56608_
                                   __tmp63393))
                                (let ((__tmp63394
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56614_
                                                _hdlen56637_
                                                _jlen56604_))))
                                  (declare (not safe))
                                  (_lp56611_ _rest56634_ __tmp63394)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56635_
                                   '0
                                   _hdlen56637_
                                   _ostr56608_
                                   _k56614_))
                                _ostr56608_))))))
                (if (let () (declare (not safe)) (##pair? _rest5661556623_))
                    (let ((_hd5662056642_
                           (let ()
                             (declare (not safe))
                             (##car _rest5661556623_)))
                          (_tl5662156644_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5661556623_))))
                      (let* ((_hd56647_ _hd5662056642_)
                             (_rest56649_ _tl5662156644_))
                        (declare (not safe))
                        (_K5661956639_ _rest56649_ _hd56647_)))
                    (let () (declare (not safe)) (_else5661756631_)))))))))
    (define read-u8vector
      (lambda (_bytes56594_ _port56595_)
        (read-subu8vector
         _bytes56594_
         '0
         (u8vector-length _bytes56594_)
         _port56595_)))
    (define write-u8vector
      (lambda (_bytes56591_ _port56592_)
        (write-subu8vector
         _bytes56591_
         '0
         (u8vector-length _bytes56591_)
         _port56592_)))
    (define read-string
      (lambda (_str56588_ _port56589_)
        (read-substring _str56588_ '0 (string-length _str56588_) _port56589_)))
    (define write-string
      (lambda (_str56585_ _port56586_)
        (write-substring
         _str56585_
         '0
         (string-length _str56585_)
         _port56586_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag56556_
               _dbg-exprs56557_
               _dbg-thunks56558_
               _expr56559_
               _thunk56560_)
        (letrec ((_fo56562_
                  (lambda ()
                    (force-output (current-error-port))
                    (force-output (current-output-port))))
                 (_d56563_
                  (lambda (_x56571_) (display _x56571_ (current-error-port))))
                 (_p56564_ (DBG-printer))
                 (_w56565_
                  (lambda (_x56573_) (_p56564_ _x56573_ (current-error-port))))
                 (_n56566_ (lambda () (newline (current-error-port))))
                 (_v56567_
                  (lambda (_l56576_)
                    (for-each
                     (lambda (_x56578_)
                       (let () (declare (not safe)) (_d56563_ '" "))
                       (let () (declare (not safe)) (_w56565_ _x56578_)))
                     _l56576_)
                    (let () (declare (not safe)) (_n56566_))))
                 (_x56568_
                  (lambda (_expr56580_ _thunk56581_)
                    (let () (declare (not safe)) (_d56563_ '"  "))
                    (let () (declare (not safe)) (_w56565_ _expr56580_))
                    (let () (declare (not safe)) (_d56563_ '" =>"))
                    (call-with-values
                     _thunk56581_
                     (lambda _x56583_
                       (let () (declare (not safe)) (_v56567_ _x56583_))
                       (apply values _x56583_))))))
          (if _tag56556_
              (begin
                (if (let () (declare (not safe)) (eq? _tag56556_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_d56563_ _tag56556_))
                      (let () (declare (not safe)) (_n56566_))))
                (for-each _x56568_ _dbg-exprs56557_ _dbg-thunks56558_)
                (if _thunk56560_
                    (let ()
                      (declare (not safe))
                      (_x56568_ _expr56559_ _thunk56560_))
                    '#!void))
              (if _thunk56560_ (_thunk56560_) '#!void)))))))
