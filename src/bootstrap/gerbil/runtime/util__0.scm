(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1707651231)
  (begin
    (define displayln
      (lambda _args58905_
        (let _lp58907_ ((_rest58909_ _args58905_))
          (let* ((_rest5891058918_ _rest58909_)
                 (_else5891258926_ (lambda () (newline)))
                 (_K5891458932_
                  (lambda (_rest58929_ _hd58930_)
                    (display _hd58930_)
                    (let () (declare (not safe)) (_lp58907_ _rest58929_)))))
            (if (let () (declare (not safe)) (##pair? _rest5891058918_))
                (let ((_hd5891558935_
                       (let () (declare (not safe)) (##car _rest5891058918_)))
                      (_tl5891658937_
                       (let () (declare (not safe)) (##cdr _rest5891058918_))))
                  (let* ((_hd58940_ _hd5891558935_)
                         (_rest58942_ _tl5891658937_))
                    (declare (not safe))
                    (_K5891458932_ _rest58942_ _hd58940_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args58903_ (for-each display _args58903_)))
    (define file-newer?
      (lambda (_file158896_ _file258897_)
        (letrec ((_modification-time58899_
                  (lambda (_file58901_)
                    (let ((__tmp63805
                           (file-info-last-modification-time
                            (file-info _file58901_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp63805)))))
          (let ((__tmp63807
                 (let ()
                   (declare (not safe))
                   (_modification-time58899_ _file158896_)))
                (__tmp63806
                 (let ()
                   (declare (not safe))
                   (_modification-time58899_ _file258897_))))
            (declare (not safe))
            (##fl> __tmp63807 __tmp63806)))))
    (define create-directory*__%
      (lambda (_dir58870_ _perms58871_)
        (letrec ((_create158873_
                  (lambda (_path58884_)
                    (if (file-exists? _path58884_)
                        (if (let ((__tmp63808 (file-type _path58884_)))
                              (declare (not safe))
                              (eq? __tmp63808 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path58884_))
                        (if _perms58871_
                            (create-directory
                             (list 'path:
                                   _path58884_
                                   'permissions:
                                   _perms58871_))
                            (create-directory _path58884_))))))
          (if (file-exists? _dir58870_)
              '#!void
              (let _lp58875_ ((_start58877_ '0))
                (let ((_$e58879_
                       (let ()
                         (declare (not safe))
                         (string-index _dir58870_ '#\/ _start58877_))))
                  (if _$e58879_
                      ((lambda (_x58882_)
                         (if (let () (declare (not safe)) (##fx> _x58882_ '0))
                             (let ((__tmp63809
                                    (substring _dir58870_ '0 _x58882_)))
                               (declare (not safe))
                               (_create158873_ __tmp63809))
                             '#!void)
                         (let ((__tmp63810
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x58882_ '1))))
                           (declare (not safe))
                           (_lp58875_ __tmp63810)))
                       _$e58879_)
                      (let ()
                        (declare (not safe))
                        (_create158873_ _dir58870_)))))))))
    (define create-directory*__0
      (lambda (_dir58889_)
        (let ((_perms58891_ '493))
          (declare (not safe))
          (create-directory*__% _dir58889_ _perms58891_))))
    (define create-directory*
      (lambda _g63812_
        (let ((_g63811_ (let () (declare (not safe)) (##length _g63812_))))
          (cond ((let () (declare (not safe)) (##fx= _g63811_ 1))
                 (apply (lambda (_dir58889_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir58889_)))
                        _g63812_))
                ((let () (declare (not safe)) (##fx= _g63811_ 2))
                 (apply (lambda (_dir58893_ _perms58894_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir58893_ _perms58894_)))
                        _g63812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g63812_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g63813_ '#t))
    (define true?
      (lambda (_obj58866_) (let () (declare (not safe)) (eq? _obj58866_ '#t))))
    (define false (lambda _g63814_ '#f))
    (define void (lambda _g63815_ '#!void))
    (define void?
      (lambda (_obj58862_)
        (let () (declare (not safe)) (eq? _obj58862_ '#!void))))
    (define eof-object (lambda _g63816_ '#!eof))
    (define identity (lambda (_obj58859_) _obj58859_))
    (define dssl-object?
      (lambda (_obj58857_)
        (if (memq _obj58857_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj58855_)
        (let () (declare (not safe)) (eq? _obj58855_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj58853_)
        (let () (declare (not safe)) (eq? _obj58853_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj58851_)
        (let () (declare (not safe)) (eq? _obj58851_ '#!optional))))
    (define immediate?
      (lambda (_obj58847_)
        (let* ((_t58849_ (let () (declare (not safe)) (##type _obj58847_)))
               (__tmp63817
                (let () (declare (not safe)) (##fxand _t58849_ '1))))
          (declare (not safe))
          (##fxzero? __tmp63817))))
    (define nonnegative-fixnum?
      (lambda (_obj58845_)
        (if (fixnum? _obj58845_)
            (let ((__tmp63818 (fxnegative? _obj58845_)))
              (declare (not safe))
              (not __tmp63818))
            '#f)))
    (define values-count
      (lambda (_obj58843_)
        (if (let () (declare (not safe)) (##values? _obj58843_))
            (let () (declare (not safe)) (##vector-length _obj58843_))
            '1)))
    (define values-ref
      (lambda (_obj58840_ _k58841_)
        (if (let () (declare (not safe)) (##values? _obj58840_))
            (let () (declare (not safe)) (##vector-ref _obj58840_ _k58841_))
            _obj58840_)))
    (define values->list
      (lambda (_obj58838_)
        (if (let () (declare (not safe)) (##values? _obj58838_))
            (let () (declare (not safe)) (##vector->list _obj58838_))
            (list _obj58838_))))
    (define subvector->list__%
      (lambda (_obj58823_ _start58824_)
        (let ((_lst58826_
               (let () (declare (not safe)) (##vector->list _obj58823_))))
          (list-tail _lst58826_ _start58824_))))
    (define subvector->list__0
      (lambda (_obj58831_)
        (let ((_start58833_ '0))
          (declare (not safe))
          (subvector->list__% _obj58831_ _start58833_))))
    (define subvector->list
      (lambda _g63820_
        (let ((_g63819_ (let () (declare (not safe)) (##length _g63820_))))
          (cond ((let () (declare (not safe)) (##fx= _g63819_ 1))
                 (apply (lambda (_obj58831_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj58831_)))
                        _g63820_))
                ((let () (declare (not safe)) (##fx= _g63819_ 2))
                 (apply (lambda (_obj58835_ _start58836_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj58835_ _start58836_)))
                        _g63820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g63820_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args58820_ (apply make-table 'test: eq? _args58820_)))
    (define make-hash-table-eqv
      (lambda _args58818_ (apply make-table 'test: eqv? _args58818_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst58815_ . _args58816_)
        (apply list->table _lst58815_ 'test: eq? _args58816_)))
    (define list->hash-table-eqv
      (lambda (_lst58812_ . _args58813_)
        (apply list->table _lst58812_ 'test: eqv? _args58813_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht58809_ _k58810_) (table-ref _ht58809_ _k58810_ '#f)))
    (define hash-put!
      (lambda (_ht58805_ _k58806_ _v58807_)
        (table-set! _ht58805_ _k58806_ _v58807_)))
    (define hash-update!__%
      (lambda (_ht58784_ _k58785_ _update58786_ _default58787_)
        (let* ((_value58789_
                (let ()
                  (declare (not safe))
                  (table-ref _ht58784_ _k58785_ _default58787_)))
               (__tmp63821 (_update58786_ _value58789_)))
          (declare (not safe))
          (table-set! _ht58784_ _k58785_ __tmp63821))))
    (define hash-update!__0
      (lambda (_ht58794_ _k58795_ _update58796_)
        (let ((_default58798_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht58794_ _k58795_ _update58796_ _default58798_))))
    (define hash-update!
      (lambda _g63823_
        (let ((_g63822_ (let () (declare (not safe)) (##length _g63823_))))
          (cond ((let () (declare (not safe)) (##fx= _g63822_ 3))
                 (apply (lambda (_ht58794_ _k58795_ _update58796_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _ht58794_
                             _k58795_
                             _update58796_)))
                        _g63823_))
                ((let () (declare (not safe)) (##fx= _g63822_ 4))
                 (apply (lambda (_ht58800_
                                 _k58801_
                                 _update58802_
                                 _default58803_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht58800_
                             _k58801_
                             _update58802_
                             _default58803_)))
                        _g63823_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g63823_))))))
    (define hash-remove!
      (lambda (_ht58780_ _k58781_) (table-set! _ht58780_ _k58781_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht58778_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht58778_))))
    (define plist->hash-table__%
      (lambda (_plst58713_ _ht58714_)
        (let _lp58716_ ((_rest58718_ _plst58713_))
          (let* ((_rest5871958730_ _rest58718_)
                 (_E5872258734_
                  (lambda () (error '"No clause matching" _rest5871958730_))))
            (let ((_K5872458749_
                   (lambda (_rest58745_ _v58746_ _k58747_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht58714_ _k58747_ _v58746_))
                     (let () (declare (not safe)) (_lp58716_ _rest58745_))))
                  (_K5872358739_ (lambda () _ht58714_)))
              (let ((_try-match5872158742_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest5871958730_ '()))
                           (let () (declare (not safe)) (_K5872358739_))
                           (let () (declare (not safe)) (_E5872258734_))))))
                (if (let () (declare (not safe)) (##pair? _rest5871958730_))
                    (let ((_tl5872658754_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5871958730_)))
                          (_hd5872558752_
                           (let ()
                             (declare (not safe))
                             (##car _rest5871958730_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5872658754_))
                          (let ((_tl5872858761_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5872658754_)))
                                (_hd5872758759_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5872658754_))))
                            (let ((_k58757_ _hd5872558752_)
                                  (_v58764_ _hd5872758759_)
                                  (_rest58766_ _tl5872858761_))
                              (let ()
                                (declare (not safe))
                                (_K5872458749_
                                 _rest58766_
                                 _v58764_
                                 _k58757_))))
                          (let ()
                            (declare (not safe))
                            (_try-match5872158742_))))
                    (let ()
                      (declare (not safe))
                      (_try-match5872158742_)))))))))
    (define plist->hash-table__0
      (lambda (_plst58771_)
        (let ((_ht58773_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst58771_ _ht58773_))))
    (define plist->hash-table
      (lambda _g63825_
        (let ((_g63824_ (let () (declare (not safe)) (##length _g63825_))))
          (cond ((let () (declare (not safe)) (##fx= _g63824_ 1))
                 (apply (lambda (_plst58771_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst58771_)))
                        _g63825_))
                ((let () (declare (not safe)) (##fx= _g63824_ 2))
                 (apply (lambda (_plst58775_ _ht58776_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst58775_ _ht58776_)))
                        _g63825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g63825_))))))
    (define plist->hash-table-eq
      (lambda (_plst58710_)
        (let ((__tmp63826
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst58710_ __tmp63826))))
    (define plist->hash-table-eqv
      (lambda (_plst58708_)
        (let ((__tmp63827
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst58708_ __tmp63827))))
    (define hash-key?
      (lambda (_ht58705_ _k58706_)
        (let ((__tmp63828
               (let ((__tmp63829
                      (let ()
                        (declare (not safe))
                        (table-ref _ht58705_ _k58706_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp63829 absent-value))))
          (declare (not safe))
          (not __tmp63828))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun58698_ _ht58699_)
        (let ((__tmp63830
               (lambda (_k58701_ _v58702_ _r58703_)
                 (let ((__tmp63831 (_fun58698_ _k58701_ _v58702_)))
                   (declare (not safe))
                   (cons __tmp63831 _r58703_)))))
          (declare (not safe))
          (hash-fold __tmp63830 '() _ht58699_))))
    (define hash-fold
      (lambda (_fun58689_ _iv58690_ _ht58691_)
        (let ((_ret58693_ _iv58690_))
          (let ((__tmp63832
                 (lambda (_k58695_ _v58696_)
                   (set! _ret58693_
                         (_fun58689_ _k58695_ _v58696_ _ret58693_)))))
            (declare (not safe))
            (table-for-each __tmp63832 _ht58691_))
          _ret58693_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht58684_)
        (let ((__tmp63833 (lambda (_k58686_ _v58687_) _k58686_)))
          (declare (not safe))
          (hash-map __tmp63833 _ht58684_))))
    (define hash-values
      (lambda (_ht58679_)
        (let ((__tmp63834 (lambda (_k58681_ _v58682_) _v58682_)))
          (declare (not safe))
          (hash-map __tmp63834 _ht58679_))))
    (define hash-copy
      (lambda (_hd58674_ . _rest58675_)
        (let ((_hd58677_ (table-copy _hd58674_)))
          (if (let () (declare (not safe)) (null? _rest58675_))
              _hd58677_
              (apply hash-copy! _hd58677_ _rest58675_)))))
    (define hash-copy!
      (lambda (_hd58669_ . _rest58670_)
        (for-each
         (lambda (_r58672_) (table-merge! _hd58669_ _r58672_))
         _rest58670_)
        _hd58669_))
    (define hash-merge
      (lambda (_hd58663_ . _rest58664_)
        (let ((__tmp63835
               (lambda (_tab58666_ _r58667_)
                 (table-merge _r58667_ _tab58666_))))
          (declare (not safe))
          (foldl1 __tmp63835 _hd58663_ _rest58664_))))
    (define hash-merge!
      (lambda (_hd58657_ . _rest58658_)
        (let ((__tmp63836
               (lambda (_tab58660_ _r58661_)
                 (table-merge! _r58661_ _tab58660_))))
          (declare (not safe))
          (foldl1 __tmp63836 _hd58657_ _rest58658_))))
    (define hash-clear!__%
      (lambda (_ht58642_ _size58643_)
        (let ((_gcht58645_
               (let () (declare (not safe)) (##vector-ref _ht58642_ '5))))
          (if (let ((__tmp63837 (fixnum? _gcht58645_)))
                (declare (not safe))
                (not __tmp63837))
              (let ()
                (declare (not safe))
                (##vector-set! _ht58642_ '5 _size58643_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht58650_)
        (let ((_size58652_ '0))
          (declare (not safe))
          (hash-clear!__% _ht58650_ _size58652_))))
    (define hash-clear!
      (lambda _g63839_
        (let ((_g63838_ (let () (declare (not safe)) (##length _g63839_))))
          (cond ((let () (declare (not safe)) (##fx= _g63838_ 1))
                 (apply (lambda (_ht58650_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht58650_)))
                        _g63839_))
                ((let () (declare (not safe)) (##fx= _g63838_ 2))
                 (apply (lambda (_ht58654_ _size58655_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht58654_ _size58655_)))
                        _g63839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g63839_))))))
    (define make-list__%
      (lambda (_k58623_ _val58624_)
        (if (fixnum? _k58623_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k58623_))
        (let _lp58626_ ((_n58628_ '0) (_r58629_ '()))
          (if (let () (declare (not safe)) (##fx< _n58628_ _k58623_))
              (let ((__tmp63841
                     (let () (declare (not safe)) (##fx+ _n58628_ '1)))
                    (__tmp63840
                     (let () (declare (not safe)) (cons _val58624_ _r58629_))))
                (declare (not safe))
                (_lp58626_ __tmp63841 __tmp63840))
              _r58629_))))
    (define make-list__0
      (lambda (_k58634_)
        (let ((_val58636_ '#f))
          (declare (not safe))
          (make-list__% _k58634_ _val58636_))))
    (define make-list
      (lambda _g63843_
        (let ((_g63842_ (let () (declare (not safe)) (##length _g63843_))))
          (cond ((let () (declare (not safe)) (##fx= _g63842_ 1))
                 (apply (lambda (_k58634_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k58634_)))
                        _g63843_))
                ((let () (declare (not safe)) (##fx= _g63842_ 2))
                 (apply (lambda (_k58638_ _val58639_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k58638_ _val58639_)))
                        _g63843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g63843_))))))
    (define cons*
      (lambda (_x58613_ _y58614_ . _rest58615_)
        (letrec ((_recur58617_
                  (lambda (_x58619_ _rest58620_)
                    (if (let () (declare (not safe)) (pair? _rest58620_))
                        (let ((__tmp63844
                               (let ((__tmp63846
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest58620_)))
                                     (__tmp63845
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest58620_))))
                                 (declare (not safe))
                                 (_recur58617_ __tmp63846 __tmp63845))))
                          (declare (not safe))
                          (cons _x58619_ __tmp63844))
                        _x58619_))))
          (let ((__tmp63847
                 (let ()
                   (declare (not safe))
                   (_recur58617_ _y58614_ _rest58615_))))
            (declare (not safe))
            (cons _x58613_ __tmp63847)))))
    (define foldl1
      (lambda (_f58571_ _iv58572_ _lst58573_)
        (let _lp58575_ ((_rest58577_ _lst58573_) (_r58578_ _iv58572_))
          (let* ((_rest5857958587_ _rest58577_)
                 (_else5858158595_ (lambda () _r58578_))
                 (_K5858358601_
                  (lambda (_rest58598_ _x58599_)
                    (let ((__tmp63848 (_f58571_ _x58599_ _r58578_)))
                      (declare (not safe))
                      (_lp58575_ _rest58598_ __tmp63848)))))
            (if (let () (declare (not safe)) (##pair? _rest5857958587_))
                (let ((_hd5858458604_
                       (let () (declare (not safe)) (##car _rest5857958587_)))
                      (_tl5858558606_
                       (let () (declare (not safe)) (##cdr _rest5857958587_))))
                  (let* ((_x58609_ _hd5858458604_)
                         (_rest58611_ _tl5858558606_))
                    (declare (not safe))
                    (_K5858358601_ _rest58611_ _x58609_)))
                (let () (declare (not safe)) (_else5858158595_)))))))
    (define foldl2
      (lambda (_f58494_ _iv58495_ _lst158496_ _lst258497_)
        (let _lp58499_ ((_rest158501_ _lst158496_)
                        (_rest258502_ _lst258497_)
                        (_r58503_ _iv58495_))
          (let* ((_rest15850458512_ _rest158501_)
                 (_else5850658520_ (lambda () _r58503_))
                 (_K5850858559_
                  (lambda (_rest158523_ _x158524_)
                    (let* ((_rest25852558533_ _rest258502_)
                           (_else5852758541_ (lambda () _r58503_))
                           (_K5852958547_
                            (lambda (_rest258544_ _x258545_)
                              (let ((__tmp63849
                                     (_f58494_ _x158524_ _x258545_ _r58503_)))
                                (declare (not safe))
                                (_lp58499_
                                 _rest158523_
                                 _rest258544_
                                 __tmp63849)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25852558533_))
                          (let ((_hd5853058550_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25852558533_)))
                                (_tl5853158552_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25852558533_))))
                            (let* ((_x258555_ _hd5853058550_)
                                   (_rest258557_ _tl5853158552_))
                              (declare (not safe))
                              (_K5852958547_ _rest258557_ _x258555_)))
                          (let () (declare (not safe)) (_else5852758541_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15850458512_))
                (let ((_hd5850958562_
                       (let () (declare (not safe)) (##car _rest15850458512_)))
                      (_tl5851058564_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15850458512_))))
                  (let* ((_x158567_ _hd5850958562_)
                         (_rest158569_ _tl5851058564_))
                    (declare (not safe))
                    (_K5850858559_ _rest158569_ _x158567_)))
                (let () (declare (not safe)) (_else5850658520_)))))))
    (define foldl
      (lambda _g63851_
        (let ((_g63850_ (let () (declare (not safe)) (##length _g63851_))))
          (cond ((let () (declare (not safe)) (##fx= _g63850_ 3))
                 (apply (lambda (_f58479_ _iv58480_ _lst58481_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f58479_ _iv58480_ _lst58481_)))
                        _g63851_))
                ((let () (declare (not safe)) (##fx= _g63850_ 4))
                 (apply (lambda (_f58483_ _iv58484_ _lst158485_ _lst258486_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f58483_
                                    _iv58484_
                                    _lst158485_
                                    _lst258486_)))
                        _g63851_))
                ((let () (declare (not safe)) (##fx>= _g63850_ 4))
                 (apply foldl* _g63851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g63851_))))))
    (define foldl*
      (lambda (_f58467_ _iv58468_ . _rest58469_)
        (let _recur58471_ ((_iv58473_ _iv58468_) (_rest58474_ _rest58469_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58474_))
              (let ((__tmp63853
                     (apply _f58467_
                            (let ((__tmp63855
                                   (lambda (_xs58476_ _r58477_)
                                     (let ((__tmp63856 (car _xs58476_)))
                                       (declare (not safe))
                                       (cons __tmp63856 _r58477_))))
                                  (__tmp63854 (list _iv58473_)))
                              (declare (not safe))
                              (foldr1 __tmp63855 __tmp63854 _rest58474_))))
                    (__tmp63852 (map cdr _rest58474_)))
                (declare (not safe))
                (_recur58471_ __tmp63853 __tmp63852))
              _iv58473_))))
    (define foldr1
      (lambda (_f58426_ _iv58427_ _lst58428_)
        (let _recur58430_ ((_rest58432_ _lst58428_))
          (let* ((_rest5843358441_ _rest58432_)
                 (_else5843558449_ (lambda () _iv58427_))
                 (_K5843758455_
                  (lambda (_rest58452_ _x58453_)
                    (_f58426_
                     _x58453_
                     (let ()
                       (declare (not safe))
                       (_recur58430_ _rest58452_))))))
            (if (let () (declare (not safe)) (##pair? _rest5843358441_))
                (let ((_hd5843858458_
                       (let () (declare (not safe)) (##car _rest5843358441_)))
                      (_tl5843958460_
                       (let () (declare (not safe)) (##cdr _rest5843358441_))))
                  (let* ((_x58463_ _hd5843858458_)
                         (_rest58465_ _tl5843958460_))
                    (declare (not safe))
                    (_K5843758455_ _rest58465_ _x58463_)))
                (let () (declare (not safe)) (_else5843558449_)))))))
    (define foldr2
      (lambda (_f58350_ _iv58351_ _lst158352_ _lst258353_)
        (let _recur58355_ ((_rest158357_ _lst158352_)
                           (_rest258358_ _lst258353_))
          (let* ((_rest15835958367_ _rest158357_)
                 (_else5836158375_ (lambda () _iv58351_))
                 (_K5836358414_
                  (lambda (_rest158378_ _x158379_)
                    (let* ((_rest25838058388_ _rest258358_)
                           (_else5838258396_ (lambda () _iv58351_))
                           (_K5838458402_
                            (lambda (_rest258399_ _x258400_)
                              (_f58350_
                               _x158379_
                               _x258400_
                               (let ()
                                 (declare (not safe))
                                 (_recur58355_ _rest158378_ _rest258399_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25838058388_))
                          (let ((_hd5838558405_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25838058388_)))
                                (_tl5838658407_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25838058388_))))
                            (let* ((_x258410_ _hd5838558405_)
                                   (_rest258412_ _tl5838658407_))
                              (declare (not safe))
                              (_K5838458402_ _rest258412_ _x258410_)))
                          (let () (declare (not safe)) (_else5838258396_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15835958367_))
                (let ((_hd5836458417_
                       (let () (declare (not safe)) (##car _rest15835958367_)))
                      (_tl5836558419_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15835958367_))))
                  (let* ((_x158422_ _hd5836458417_)
                         (_rest158424_ _tl5836558419_))
                    (declare (not safe))
                    (_K5836358414_ _rest158424_ _x158422_)))
                (let () (declare (not safe)) (_else5836158375_)))))))
    (define foldr
      (lambda _g63858_
        (let ((_g63857_ (let () (declare (not safe)) (##length _g63858_))))
          (cond ((let () (declare (not safe)) (##fx= _g63857_ 3))
                 (apply (lambda (_f58335_ _iv58336_ _lst58337_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f58335_ _iv58336_ _lst58337_)))
                        _g63858_))
                ((let () (declare (not safe)) (##fx= _g63857_ 4))
                 (apply (lambda (_f58339_ _iv58340_ _lst158341_ _lst258342_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f58339_
                                    _iv58340_
                                    _lst158341_
                                    _lst258342_)))
                        _g63858_))
                ((let () (declare (not safe)) (##fx>= _g63857_ 4))
                 (apply foldr* _g63858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g63858_))))))
    (define foldr*
      (lambda (_f58324_ _iv58325_ . _rest58326_)
        (let _recur58328_ ((_rest58330_ _rest58326_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58330_))
              (apply _f58324_
                     (let ((__tmp63861
                            (lambda (_xs58332_ _r58333_)
                              (let ((__tmp63862 (car _xs58332_)))
                                (declare (not safe))
                                (cons __tmp63862 _r58333_))))
                           (__tmp63859
                            (list (let ((__tmp63860 (map cdr _rest58330_)))
                                    (declare (not safe))
                                    (_recur58328_ __tmp63860)))))
                       (declare (not safe))
                       (foldr1 __tmp63861 __tmp63859 _rest58330_)))
              _iv58325_))))
    (define remove-nulls!
      (lambda (_l58211_)
        (let* ((_l5821258225_ _l58211_)
               (_E5821658229_
                (lambda () (error '"No clause matching" _l5821258225_))))
          (let ((_K5822158314_
                 (lambda (_r58312_)
                   (let () (declare (not safe)) (remove-nulls! _r58312_))))
                (_K5821858301_
                 (lambda (_r58241_)
                   (let _loop58243_ ((_l58245_ _l58211_) (_r58246_ _r58241_))
                     (let* ((_r5824758260_ _r58246_)
                            (_E5825158264_
                             (lambda ()
                               (error '"No clause matching" _r5824758260_))))
                       (let ((_K5825658291_
                              (lambda (_rr58289_)
                                (set-cdr!
                                 _l58245_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr58289_)))))
                             (_K5825358278_
                              (lambda (_rr58276_)
                                (let ()
                                  (declare (not safe))
                                  (_loop58243_ _r58246_ _rr58276_))))
                             (_K5825258269_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5824758260_))
                             (let ((_tl5825858296_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5824758260_)))
                                   (_hd5825758294_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5824758260_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5825758294_))
                                   (let ((_rr58299_ _tl5825858296_))
                                     (declare (not safe))
                                     (_K5825658291_ _rr58299_))
                                   (let ((_rr58284_ _tl5825858296_))
                                     (declare (not safe))
                                     (_K5825358278_ _rr58284_))))
                             '#!void))))
                   _l58211_))
                (_K5821758234_ (lambda () _l58211_)))
            (if (let () (declare (not safe)) (##pair? _l5821258225_))
                (let ((_tl5822358319_
                       (let () (declare (not safe)) (##cdr _l5821258225_)))
                      (_hd5822258317_
                       (let () (declare (not safe)) (##car _l5821258225_))))
                  (if (let () (declare (not safe)) (##null? _hd5822258317_))
                      (let ((_r58322_ _tl5822358319_))
                        (declare (not safe))
                        (remove-nulls! _r58322_))
                      (let ((_r58307_ _tl5822358319_))
                        (declare (not safe))
                        (_K5821858301_ _r58307_))))
                (let () (declare (not safe)) (_K5821758234_)))))))
    (define append1!
      (lambda (_l58206_ _x58207_)
        (let ((_l258209_ (let () (declare (not safe)) (cons _x58207_ '()))))
          (if (let () (declare (not safe)) (pair? _l58206_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l58206_))
               _l258209_)
              _l258209_))))
    (define append-reverse
      (lambda (_rev-head58203_ _tail58204_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail58204_ _rev-head58203_))))
    (define append-reverse-until
      (lambda (_pred58156_ _rhead58157_ _tail58158_)
        (let _loop58160_ ((_rhead58162_ _rhead58157_)
                          (_tail58163_ _tail58158_))
          (let* ((_rhead5816458173_ _rhead58162_)
                 (_E5816758177_
                  (lambda () (error '"No clause matching" _rhead5816458173_))))
            (let ((_K5817158200_ (lambda () (values '() _tail58163_)))
                  (_K5816858184_
                   (lambda (_r58181_ _a58182_)
                     (if (_pred58156_ _a58182_)
                         (values _rhead58162_ _tail58163_)
                         (let ((__tmp63863
                                (let ()
                                  (declare (not safe))
                                  (cons _a58182_ _tail58163_))))
                           (declare (not safe))
                           (_loop58160_ _r58181_ __tmp63863))))))
              (let ((_try-match5816658196_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5816458173_))
                           (let ((_tl5817058189_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5816458173_)))
                                 (_hd5816958187_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5816458173_))))
                             (let ((_a58192_ _hd5816958187_)
                                   (_r58194_ _tl5817058189_))
                               (let ()
                                 (declare (not safe))
                                 (_K5816858184_ _r58194_ _a58192_))))
                           (let () (declare (not safe)) (_E5816758177_))))))
                (if (let () (declare (not safe)) (##null? _rhead5816458173_))
                    (let () (declare (not safe)) (_K5817158200_))
                    (let ()
                      (declare (not safe))
                      (_try-match5816658196_)))))))))
    (define andmap1
      (lambda (_f58116_ _lst58117_)
        (let _lp58119_ ((_rest58121_ _lst58117_))
          (let* ((_rest5812258130_ _rest58121_)
                 (_else5812458138_ (lambda () '#t))
                 (_K5812658144_
                  (lambda (_rest58141_ _x58142_)
                    (if (_f58116_ _x58142_)
                        (let () (declare (not safe)) (_lp58119_ _rest58141_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5812258130_))
                (let ((_hd5812758147_
                       (let () (declare (not safe)) (##car _rest5812258130_)))
                      (_tl5812858149_
                       (let () (declare (not safe)) (##cdr _rest5812258130_))))
                  (let* ((_x58152_ _hd5812758147_)
                         (_rest58154_ _tl5812858149_))
                    (declare (not safe))
                    (_K5812658144_ _rest58154_ _x58152_)))
                (let () (declare (not safe)) (_else5812458138_)))))))
    (define andmap2
      (lambda (_f58041_ _lst158042_ _lst258043_)
        (let _lp58045_ ((_rest158047_ _lst158042_) (_rest258048_ _lst258043_))
          (let* ((_rest15804958057_ _rest158047_)
                 (_else5805158065_ (lambda () '#t))
                 (_K5805358104_
                  (lambda (_rest158068_ _x158069_)
                    (let* ((_rest25807058078_ _rest258048_)
                           (_else5807258086_ (lambda () '#t))
                           (_K5807458092_
                            (lambda (_rest258089_ _x258090_)
                              (if (_f58041_ _x158069_ _x258090_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp58045_ _rest158068_ _rest258089_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25807058078_))
                          (let ((_hd5807558095_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25807058078_)))
                                (_tl5807658097_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25807058078_))))
                            (let* ((_x258100_ _hd5807558095_)
                                   (_rest258102_ _tl5807658097_))
                              (declare (not safe))
                              (_K5807458092_ _rest258102_ _x258100_)))
                          (let () (declare (not safe)) (_else5807258086_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15804958057_))
                (let ((_hd5805458107_
                       (let () (declare (not safe)) (##car _rest15804958057_)))
                      (_tl5805558109_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15804958057_))))
                  (let* ((_x158112_ _hd5805458107_)
                         (_rest158114_ _tl5805558109_))
                    (declare (not safe))
                    (_K5805358104_ _rest158114_ _x158112_)))
                (let () (declare (not safe)) (_else5805158065_)))))))
    (define andmap
      (lambda _g63865_
        (let ((_g63864_ (let () (declare (not safe)) (##length _g63865_))))
          (cond ((let () (declare (not safe)) (##fx= _g63864_ 2))
                 (apply (lambda (_f58029_ _lst58030_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f58029_ _lst58030_)))
                        _g63865_))
                ((let () (declare (not safe)) (##fx= _g63864_ 3))
                 (apply (lambda (_f58032_ _lst158033_ _lst258034_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f58032_ _lst158033_ _lst258034_)))
                        _g63865_))
                ((let () (declare (not safe)) (##fx>= _g63864_ 3))
                 (apply andmap* _g63865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g63865_))))))
    (define andmap*
      (lambda (_f58022_ . _rest58023_)
        (let _recur58025_ ((_rest58027_ _rest58023_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58027_))
              (if (apply _f58022_ (map car _rest58027_))
                  (let ((__tmp63866 (map cdr _rest58027_)))
                    (declare (not safe))
                    (_recur58025_ __tmp63866))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f57979_ _lst57980_)
        (let _lp57982_ ((_rest57984_ _lst57980_))
          (let* ((_rest5798557993_ _rest57984_)
                 (_else5798758001_ (lambda () '#f))
                 (_K5798958010_
                  (lambda (_rest58004_ _x58005_)
                    (let ((_$e58007_ (_f57979_ _x58005_)))
                      (if _$e58007_
                          _$e58007_
                          (let ()
                            (declare (not safe))
                            (_lp57982_ _rest58004_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5798557993_))
                (let ((_hd5799058013_
                       (let () (declare (not safe)) (##car _rest5798557993_)))
                      (_tl5799158015_
                       (let () (declare (not safe)) (##cdr _rest5798557993_))))
                  (let* ((_x58018_ _hd5799058013_)
                         (_rest58020_ _tl5799158015_))
                    (declare (not safe))
                    (_K5798958010_ _rest58020_ _x58018_)))
                (let () (declare (not safe)) (_else5798758001_)))))))
    (define ormap2
      (lambda (_f57901_ _lst157902_ _lst257903_)
        (let _lp57905_ ((_rest157907_ _lst157902_) (_rest257908_ _lst257903_))
          (let* ((_rest15790957917_ _rest157907_)
                 (_else5791157925_ (lambda () '#f))
                 (_K5791357967_
                  (lambda (_rest157928_ _x157929_)
                    (let* ((_rest25793057938_ _rest257908_)
                           (_else5793257946_ (lambda () '#f))
                           (_K5793457955_
                            (lambda (_rest257949_ _x257950_)
                              (let ((_$e57952_ (_f57901_ _x157929_ _x257950_)))
                                (if _$e57952_
                                    _$e57952_
                                    (let ()
                                      (declare (not safe))
                                      (_lp57905_
                                       _rest157928_
                                       _rest257949_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25793057938_))
                          (let ((_hd5793557958_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25793057938_)))
                                (_tl5793657960_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25793057938_))))
                            (let* ((_x257963_ _hd5793557958_)
                                   (_rest257965_ _tl5793657960_))
                              (declare (not safe))
                              (_K5793457955_ _rest257965_ _x257963_)))
                          (let () (declare (not safe)) (_else5793257946_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15790957917_))
                (let ((_hd5791457970_
                       (let () (declare (not safe)) (##car _rest15790957917_)))
                      (_tl5791557972_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15790957917_))))
                  (let* ((_x157975_ _hd5791457970_)
                         (_rest157977_ _tl5791557972_))
                    (declare (not safe))
                    (_K5791357967_ _rest157977_ _x157975_)))
                (let () (declare (not safe)) (_else5791157925_)))))))
    (define ormap
      (lambda _g63868_
        (let ((_g63867_ (let () (declare (not safe)) (##length _g63868_))))
          (cond ((let () (declare (not safe)) (##fx= _g63867_ 2))
                 (apply (lambda (_f57889_ _lst57890_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f57889_ _lst57890_)))
                        _g63868_))
                ((let () (declare (not safe)) (##fx= _g63867_ 3))
                 (apply (lambda (_f57892_ _lst157893_ _lst257894_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f57892_ _lst157893_ _lst257894_)))
                        _g63868_))
                ((let () (declare (not safe)) (##fx>= _g63867_ 3))
                 (apply ormap* _g63868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g63868_))))))
    (define ormap*
      (lambda (_f57879_ . _rest57880_)
        (let _recur57882_ ((_rest57884_ _rest57880_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57884_))
              (let ((_$e57886_ (apply _f57879_ (map car _rest57884_))))
                (if _$e57886_
                    _$e57886_
                    (let ((__tmp63869 (map cdr _rest57884_)))
                      (declare (not safe))
                      (_recur57882_ __tmp63869))))
              '#f))))
    (define filter
      (lambda (_f57837_ _lst57838_)
        (let _recur57840_ ((_lst57842_ _lst57838_))
          (let* ((_lst5784357851_ _lst57842_)
                 (_else5784557859_ (lambda () '()))
                 (_K5784757867_
                  (lambda (_rest57862_ _hd57863_)
                    (if (_f57837_ _hd57863_)
                        (let ((_tail57865_
                               (let ()
                                 (declare (not safe))
                                 (_recur57840_ _rest57862_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail57865_ _rest57862_))
                              _lst57842_
                              (let ()
                                (declare (not safe))
                                (cons _hd57863_ _tail57865_))))
                        (let ()
                          (declare (not safe))
                          (_recur57840_ _rest57862_))))))
            (if (let () (declare (not safe)) (##pair? _lst5784357851_))
                (let ((_hd5784857870_
                       (let () (declare (not safe)) (##car _lst5784357851_)))
                      (_tl5784957872_
                       (let () (declare (not safe)) (##cdr _lst5784357851_))))
                  (let* ((_hd57875_ _hd5784857870_)
                         (_rest57877_ _tl5784957872_))
                    (declare (not safe))
                    (_K5784757867_ _rest57877_ _hd57875_)))
                (let () (declare (not safe)) (_else5784557859_)))))))
    (define filter-map1
      (lambda (_f57792_ _lst57793_)
        (let _recur57795_ ((_rest57797_ _lst57793_))
          (let* ((_rest5779857806_ _rest57797_)
                 (_else5780057814_ (lambda () '()))
                 (_K5780257825_
                  (lambda (_rest57817_ _x57818_)
                    (let ((_$e57820_ (_f57792_ _x57818_)))
                      (if _$e57820_
                          ((lambda (_r57823_)
                             (let ((__tmp63870
                                    (let ()
                                      (declare (not safe))
                                      (_recur57795_ _rest57817_))))
                               (declare (not safe))
                               (cons _r57823_ __tmp63870)))
                           _$e57820_)
                          (let ()
                            (declare (not safe))
                            (_recur57795_ _rest57817_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5779857806_))
                (let ((_hd5780357828_
                       (let () (declare (not safe)) (##car _rest5779857806_)))
                      (_tl5780457830_
                       (let () (declare (not safe)) (##cdr _rest5779857806_))))
                  (let* ((_x57833_ _hd5780357828_)
                         (_rest57835_ _tl5780457830_))
                    (declare (not safe))
                    (_K5780257825_ _rest57835_ _x57833_)))
                (let () (declare (not safe)) (_else5780057814_)))))))
    (define filter-map2
      (lambda (_f57712_ _lst157713_ _lst257714_)
        (let _recur57716_ ((_rest157718_ _lst157713_)
                           (_rest257719_ _lst257714_))
          (let* ((_rest15772057728_ _rest157718_)
                 (_else5772257736_ (lambda () '()))
                 (_K5772457780_
                  (lambda (_rest157739_ _x157740_)
                    (let* ((_rest25774157749_ _rest257719_)
                           (_else5774357757_ (lambda () '()))
                           (_K5774557768_
                            (lambda (_rest257760_ _x257761_)
                              (let ((_$e57763_ (_f57712_ _x157740_ _x257761_)))
                                (if _$e57763_
                                    ((lambda (_r57766_)
                                       (let ((__tmp63871
                                              (let ()
                                                (declare (not safe))
                                                (_recur57716_
                                                 _rest157739_
                                                 _rest257760_))))
                                         (declare (not safe))
                                         (cons _r57766_ __tmp63871)))
                                     _$e57763_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur57716_
                                       _rest157739_
                                       _rest257760_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25774157749_))
                          (let ((_hd5774657771_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25774157749_)))
                                (_tl5774757773_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25774157749_))))
                            (let* ((_x257776_ _hd5774657771_)
                                   (_rest257778_ _tl5774757773_))
                              (declare (not safe))
                              (_K5774557768_ _rest257778_ _x257776_)))
                          (let () (declare (not safe)) (_else5774357757_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15772057728_))
                (let ((_hd5772557783_
                       (let () (declare (not safe)) (##car _rest15772057728_)))
                      (_tl5772657785_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15772057728_))))
                  (let* ((_x157788_ _hd5772557783_)
                         (_rest157790_ _tl5772657785_))
                    (declare (not safe))
                    (_K5772457780_ _rest157790_ _x157788_)))
                (let () (declare (not safe)) (_else5772257736_)))))))
    (define filter-map
      (lambda _g63873_
        (let ((_g63872_ (let () (declare (not safe)) (##length _g63873_))))
          (cond ((let () (declare (not safe)) (##fx= _g63872_ 2))
                 (apply (lambda (_f57700_ _lst57701_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f57700_ _lst57701_)))
                        _g63873_))
                ((let () (declare (not safe)) (##fx= _g63872_ 3))
                 (apply (lambda (_f57703_ _lst157704_ _lst257705_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f57703_ _lst157704_ _lst257705_)))
                        _g63873_))
                ((let () (declare (not safe)) (##fx>= _g63872_ 3))
                 (apply filter-map* _g63873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g63873_))))))
    (define filter-map*
      (lambda (_f57688_ . _rest57689_)
        (let _recur57691_ ((_rest57693_ _rest57689_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57693_))
              (let ((_$e57695_ (apply _f57688_ (map car _rest57693_))))
                (if _$e57695_
                    ((lambda (_r57698_)
                       (let ((__tmp63875
                              (let ((__tmp63876 (map cdr _rest57693_)))
                                (declare (not safe))
                                (_recur57691_ __tmp63876))))
                         (declare (not safe))
                         (cons _r57698_ __tmp63875)))
                     _$e57695_)
                    (let ((__tmp63874 (map cdr _rest57693_)))
                      (declare (not safe))
                      (_recur57691_ __tmp63874))))
              '()))))
    (define iota__%
      (lambda (_count57656_ _start57657_ _step57658_)
        (if (fixnum? _count57656_)
            '#!void
            (error '"expected fixnum" _count57656_))
        (if (let () (declare (not safe)) (number? _start57657_))
            '#!void
            (error '"expected number" _start57657_))
        (if (let () (declare (not safe)) (number? _step57658_))
            '#!void
            (error '"expected number" _step57658_))
        (let ((_root57660_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp57662_ ((_i57664_ '0)
                          (_x57665_ _start57657_)
                          (_tl57666_ _root57660_))
            (if (let () (declare (not safe)) (##fx< _i57664_ _count57656_))
                (let ((_tl*57668_
                       (let () (declare (not safe)) (cons _x57665_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl57666_ _tl*57668_))
                  (let ((__tmp63878
                         (let () (declare (not safe)) (##fx+ _i57664_ '1)))
                        (__tmp63877 (+ _x57665_ _step57658_)))
                    (declare (not safe))
                    (_lp57662_ __tmp63878 __tmp63877 _tl*57668_)))
                (let () (declare (not safe)) (##cdr _root57660_)))))))
    (define iota__0
      (lambda (_count57673_)
        (let* ((_start57675_ '0) (_step57677_ '1))
          (declare (not safe))
          (iota__% _count57673_ _start57675_ _step57677_))))
    (define iota__1
      (lambda (_count57679_ _start57680_)
        (let ((_step57682_ '1))
          (declare (not safe))
          (iota__% _count57679_ _start57680_ _step57682_))))
    (define iota
      (lambda _g63880_
        (let ((_g63879_ (let () (declare (not safe)) (##length _g63880_))))
          (cond ((let () (declare (not safe)) (##fx= _g63879_ 1))
                 (apply (lambda (_count57673_)
                          (let () (declare (not safe)) (iota__0 _count57673_)))
                        _g63880_))
                ((let () (declare (not safe)) (##fx= _g63879_ 2))
                 (apply (lambda (_count57679_ _start57680_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count57679_ _start57680_)))
                        _g63880_))
                ((let () (declare (not safe)) (##fx= _g63879_ 3))
                 (apply (lambda (_count57684_ _start57685_ _step57686_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count57684_ _start57685_ _step57686_)))
                        _g63880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g63880_))))))
    (define last-pair
      (lambda (_lst57630_)
        (let* ((_lst5763157638_ _lst57630_)
               (_E5763357642_
                (lambda () (error '"No clause matching" _lst5763157638_)))
               (_K5763457647_
                (lambda (_rest57645_)
                  (if (let () (declare (not safe)) (pair? _rest57645_))
                      (let () (declare (not safe)) (last-pair _rest57645_))
                      _lst57630_))))
          (if (let () (declare (not safe)) (##pair? _lst5763157638_))
              (let* ((_tl5763657650_
                      (let () (declare (not safe)) (##cdr _lst5763157638_)))
                     (_rest57653_ _tl5763657650_))
                (declare (not safe))
                (_K5763457647_ _rest57653_))
              (let () (declare (not safe)) (_E5763357642_))))))
    (define last
      (lambda (_lst57628_)
        (car (let () (declare (not safe)) (last-pair _lst57628_)))))
    (define assgetq__%
      (lambda (_key57606_ _lst57608_ _default57610_)
        (let ((_$e57613_
               (if (let () (declare (not safe)) (pair? _lst57608_))
                   (assq _key57606_ _lst57608_)
                   '#f)))
          (if _$e57613_
              (cdr _$e57613_)
              (if (let () (declare (not safe)) (procedure? _default57610_))
                  (_default57610_ _key57606_)
                  _default57610_)))))
    (define assgetq__0
      (lambda (_key57619_ _lst57620_)
        (let ((_default57622_ '#f))
          (declare (not safe))
          (assgetq__% _key57619_ _lst57620_ _default57622_))))
    (define assgetq
      (lambda _g63882_
        (let ((_g63881_ (let () (declare (not safe)) (##length _g63882_))))
          (cond ((let () (declare (not safe)) (##fx= _g63881_ 2))
                 (apply (lambda (_key57619_ _lst57620_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key57619_ _lst57620_)))
                        _g63882_))
                ((let () (declare (not safe)) (##fx= _g63881_ 3))
                 (apply (lambda (_key57624_ _lst57625_ _default57626_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key57624_ _lst57625_ _default57626_)))
                        _g63882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g63882_))))))
    (define assgetv__%
      (lambda (_key57583_ _lst57585_ _default57587_)
        (let ((_$e57590_
               (if (let () (declare (not safe)) (pair? _lst57585_))
                   (assv _key57583_ _lst57585_)
                   '#f)))
          (if _$e57590_
              (cdr _$e57590_)
              (if (let () (declare (not safe)) (procedure? _default57587_))
                  (_default57587_ _key57583_)
                  _default57587_)))))
    (define assgetv__0
      (lambda (_key57596_ _lst57597_)
        (let ((_default57599_ '#f))
          (declare (not safe))
          (assgetv__% _key57596_ _lst57597_ _default57599_))))
    (define assgetv
      (lambda _g63884_
        (let ((_g63883_ (let () (declare (not safe)) (##length _g63884_))))
          (cond ((let () (declare (not safe)) (##fx= _g63883_ 2))
                 (apply (lambda (_key57596_ _lst57597_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key57596_ _lst57597_)))
                        _g63884_))
                ((let () (declare (not safe)) (##fx= _g63883_ 3))
                 (apply (lambda (_key57601_ _lst57602_ _default57603_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key57601_ _lst57602_ _default57603_)))
                        _g63884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g63884_))))))
    (define assget__%
      (lambda (_key57560_ _lst57562_ _default57564_)
        (let ((_$e57567_
               (if (let () (declare (not safe)) (pair? _lst57562_))
                   (assoc _key57560_ _lst57562_)
                   '#f)))
          (if _$e57567_
              (cdr _$e57567_)
              (if (let () (declare (not safe)) (procedure? _default57564_))
                  (_default57564_ _key57560_)
                  _default57564_)))))
    (define assget__0
      (lambda (_key57573_ _lst57574_)
        (let ((_default57576_ '#f))
          (declare (not safe))
          (assget__% _key57573_ _lst57574_ _default57576_))))
    (define assget
      (lambda _g63886_
        (let ((_g63885_ (let () (declare (not safe)) (##length _g63886_))))
          (cond ((let () (declare (not safe)) (##fx= _g63885_ 2))
                 (apply (lambda (_key57573_ _lst57574_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key57573_ _lst57574_)))
                        _g63886_))
                ((let () (declare (not safe)) (##fx= _g63885_ 3))
                 (apply (lambda (_key57578_ _lst57579_ _default57580_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key57578_ _lst57579_ _default57580_)))
                        _g63886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g63886_))))))
    (define pgetq__%
      (lambda (_key57489_ _lst57491_ _default57493_)
        (let _lp57496_ ((_rest57499_ _lst57491_))
          (let* ((_rest5750157511_ _rest57499_)
                 (_else5750357519_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57493_))
                        (_default57493_ _key57489_)
                        _default57493_)))
                 (_K5750557528_
                  (lambda (_rest57522_ _v57523_ _k57525_)
                    (if (let () (declare (not safe)) (eq? _k57525_ _key57489_))
                        _v57523_
                        (let ()
                          (declare (not safe))
                          (_lp57496_ _rest57522_))))))
            (if (let () (declare (not safe)) (##pair? _rest5750157511_))
                (let ((_hd5750657531_
                       (let () (declare (not safe)) (##car _rest5750157511_)))
                      (_tl5750757533_
                       (let () (declare (not safe)) (##cdr _rest5750157511_))))
                  (let ((_k57536_ _hd5750657531_))
                    (if (let () (declare (not safe)) (##pair? _tl5750757533_))
                        (let ((_hd5750857538_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5750757533_)))
                              (_tl5750957540_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5750757533_))))
                          (let* ((_v57543_ _hd5750857538_)
                                 (_rest57545_ _tl5750957540_))
                            (declare (not safe))
                            (_K5750557528_ _rest57545_ _v57543_ _k57536_)))
                        (let () (declare (not safe)) (_else5750357519_)))))
                (let () (declare (not safe)) (_else5750357519_)))))))
    (define pgetq__0
      (lambda (_key57550_ _lst57551_)
        (let ((_default57553_ '#f))
          (declare (not safe))
          (pgetq__% _key57550_ _lst57551_ _default57553_))))
    (define pgetq
      (lambda _g63888_
        (let ((_g63887_ (let () (declare (not safe)) (##length _g63888_))))
          (cond ((let () (declare (not safe)) (##fx= _g63887_ 2))
                 (apply (lambda (_key57550_ _lst57551_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key57550_ _lst57551_)))
                        _g63888_))
                ((let () (declare (not safe)) (##fx= _g63887_ 3))
                 (apply (lambda (_key57555_ _lst57556_ _default57557_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key57555_ _lst57556_ _default57557_)))
                        _g63888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g63888_))))))
    (define pgetv__%
      (lambda (_key57418_ _lst57420_ _default57422_)
        (let _lp57425_ ((_rest57428_ _lst57420_))
          (let* ((_rest5743057440_ _rest57428_)
                 (_else5743257448_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57422_))
                        (_default57422_ _key57418_)
                        _default57422_)))
                 (_K5743457457_
                  (lambda (_rest57451_ _v57452_ _k57454_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k57454_ _key57418_))
                        _v57452_
                        (let ()
                          (declare (not safe))
                          (_lp57425_ _rest57451_))))))
            (if (let () (declare (not safe)) (##pair? _rest5743057440_))
                (let ((_hd5743557460_
                       (let () (declare (not safe)) (##car _rest5743057440_)))
                      (_tl5743657462_
                       (let () (declare (not safe)) (##cdr _rest5743057440_))))
                  (let ((_k57465_ _hd5743557460_))
                    (if (let () (declare (not safe)) (##pair? _tl5743657462_))
                        (let ((_hd5743757467_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5743657462_)))
                              (_tl5743857469_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5743657462_))))
                          (let* ((_v57472_ _hd5743757467_)
                                 (_rest57474_ _tl5743857469_))
                            (declare (not safe))
                            (_K5743457457_ _rest57474_ _v57472_ _k57465_)))
                        (let () (declare (not safe)) (_else5743257448_)))))
                (let () (declare (not safe)) (_else5743257448_)))))))
    (define pgetv__0
      (lambda (_key57479_ _lst57480_)
        (let ((_default57482_ '#f))
          (declare (not safe))
          (pgetv__% _key57479_ _lst57480_ _default57482_))))
    (define pgetv
      (lambda _g63890_
        (let ((_g63889_ (let () (declare (not safe)) (##length _g63890_))))
          (cond ((let () (declare (not safe)) (##fx= _g63889_ 2))
                 (apply (lambda (_key57479_ _lst57480_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key57479_ _lst57480_)))
                        _g63890_))
                ((let () (declare (not safe)) (##fx= _g63889_ 3))
                 (apply (lambda (_key57484_ _lst57485_ _default57486_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key57484_ _lst57485_ _default57486_)))
                        _g63890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g63890_))))))
    (define pget__%
      (lambda (_key57347_ _lst57349_ _default57351_)
        (let _lp57354_ ((_rest57357_ _lst57349_))
          (let* ((_rest5735957369_ _rest57357_)
                 (_else5736157377_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57351_))
                        (_default57351_ _key57347_)
                        _default57351_)))
                 (_K5736357386_
                  (lambda (_rest57380_ _v57381_ _k57383_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k57383_ _key57347_))
                        _v57381_
                        (let ()
                          (declare (not safe))
                          (_lp57354_ _rest57380_))))))
            (if (let () (declare (not safe)) (##pair? _rest5735957369_))
                (let ((_hd5736457389_
                       (let () (declare (not safe)) (##car _rest5735957369_)))
                      (_tl5736557391_
                       (let () (declare (not safe)) (##cdr _rest5735957369_))))
                  (let ((_k57394_ _hd5736457389_))
                    (if (let () (declare (not safe)) (##pair? _tl5736557391_))
                        (let ((_hd5736657396_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5736557391_)))
                              (_tl5736757398_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5736557391_))))
                          (let* ((_v57401_ _hd5736657396_)
                                 (_rest57403_ _tl5736757398_))
                            (declare (not safe))
                            (_K5736357386_ _rest57403_ _v57401_ _k57394_)))
                        (let () (declare (not safe)) (_else5736157377_)))))
                (let () (declare (not safe)) (_else5736157377_)))))))
    (define pget__0
      (lambda (_key57408_ _lst57409_)
        (let ((_default57411_ '#f))
          (declare (not safe))
          (pget__% _key57408_ _lst57409_ _default57411_))))
    (define pget
      (lambda _g63892_
        (let ((_g63891_ (let () (declare (not safe)) (##length _g63892_))))
          (cond ((let () (declare (not safe)) (##fx= _g63891_ 2))
                 (apply (lambda (_key57408_ _lst57409_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key57408_ _lst57409_)))
                        _g63892_))
                ((let () (declare (not safe)) (##fx= _g63891_ 3))
                 (apply (lambda (_key57413_ _lst57414_ _default57415_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key57413_ _lst57414_ _default57415_)))
                        _g63892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g63892_))))))
    (define find
      (lambda (_pred57340_ _lst57341_)
        (let ((_$e57343_
               (let () (declare (not safe)) (memf _pred57340_ _lst57341_))))
          (if _$e57343_ (car _$e57343_) '#f))))
    (define memf
      (lambda (_proc57300_ _lst57301_)
        (let _lp57303_ ((_rest57305_ _lst57301_))
          (let* ((_rest5730657314_ _rest57305_)
                 (_else5730857322_ (lambda () '#f))
                 (_K5731057328_
                  (lambda (_tl57325_ _hd57326_)
                    (if (_proc57300_ _hd57326_)
                        _rest57305_
                        (let () (declare (not safe)) (_lp57303_ _tl57325_))))))
            (if (let () (declare (not safe)) (##pair? _rest5730657314_))
                (let ((_hd5731157331_
                       (let () (declare (not safe)) (##car _rest5730657314_)))
                      (_tl5731257333_
                       (let () (declare (not safe)) (##cdr _rest5730657314_))))
                  (let* ((_hd57336_ _hd5731157331_) (_tl57338_ _tl5731257333_))
                    (declare (not safe))
                    (_K5731057328_ _tl57338_ _hd57336_)))
                (let () (declare (not safe)) (_else5730857322_)))))))
    (define remove1
      (lambda (_el57253_ _lst57255_)
        (let _lp57258_ ((_rest57261_ _lst57255_) (_r57263_ '()))
          (let* ((_rest5726557273_ _rest57261_)
                 (_else5726757281_ (lambda () _lst57255_))
                 (_K5726957288_
                  (lambda (_rest57284_ _hd57285_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el57253_ _hd57285_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57284_ _r57263_))
                        (let ((__tmp63893
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57285_ _r57263_))))
                          (declare (not safe))
                          (_lp57258_ _rest57284_ __tmp63893))))))
            (if (let () (declare (not safe)) (##pair? _rest5726557273_))
                (let ((_hd5727057291_
                       (let () (declare (not safe)) (##car _rest5726557273_)))
                      (_tl5727157293_
                       (let () (declare (not safe)) (##cdr _rest5726557273_))))
                  (let* ((_hd57296_ _hd5727057291_)
                         (_rest57298_ _tl5727157293_))
                    (declare (not safe))
                    (_K5726957288_ _rest57298_ _hd57296_)))
                (let () (declare (not safe)) (_else5726757281_)))))))
    (define remv
      (lambda (_el57206_ _lst57208_)
        (let _lp57211_ ((_rest57214_ _lst57208_) (_r57216_ '()))
          (let* ((_rest5721857226_ _rest57214_)
                 (_else5722057234_ (lambda () _lst57208_))
                 (_K5722257241_
                  (lambda (_rest57237_ _hd57238_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el57206_ _hd57238_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57237_ _r57216_))
                        (let ((__tmp63894
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57238_ _r57216_))))
                          (declare (not safe))
                          (_lp57211_ _rest57237_ __tmp63894))))))
            (if (let () (declare (not safe)) (##pair? _rest5721857226_))
                (let ((_hd5722357244_
                       (let () (declare (not safe)) (##car _rest5721857226_)))
                      (_tl5722457246_
                       (let () (declare (not safe)) (##cdr _rest5721857226_))))
                  (let* ((_hd57249_ _hd5722357244_)
                         (_rest57251_ _tl5722457246_))
                    (declare (not safe))
                    (_K5722257241_ _rest57251_ _hd57249_)))
                (let () (declare (not safe)) (_else5722057234_)))))))
    (define remq
      (lambda (_el57159_ _lst57161_)
        (let _lp57164_ ((_rest57167_ _lst57161_) (_r57169_ '()))
          (let* ((_rest5717157179_ _rest57167_)
                 (_else5717357187_ (lambda () _lst57161_))
                 (_K5717557194_
                  (lambda (_rest57190_ _hd57191_)
                    (if (let () (declare (not safe)) (eq? _el57159_ _hd57191_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57190_ _r57169_))
                        (let ((__tmp63895
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57191_ _r57169_))))
                          (declare (not safe))
                          (_lp57164_ _rest57190_ __tmp63895))))))
            (if (let () (declare (not safe)) (##pair? _rest5717157179_))
                (let ((_hd5717657197_
                       (let () (declare (not safe)) (##car _rest5717157179_)))
                      (_tl5717757199_
                       (let () (declare (not safe)) (##cdr _rest5717157179_))))
                  (let* ((_hd57202_ _hd5717657197_)
                         (_rest57204_ _tl5717757199_))
                    (declare (not safe))
                    (_K5717557194_ _rest57204_ _hd57202_)))
                (let () (declare (not safe)) (_else5717357187_)))))))
    (define remf
      (lambda (_proc57118_ _lst57119_)
        (let _lp57121_ ((_rest57123_ _lst57119_) (_r57124_ '()))
          (let* ((_rest5712557133_ _rest57123_)
                 (_else5712757141_ (lambda () _lst57119_))
                 (_K5712957147_
                  (lambda (_rest57144_ _hd57145_)
                    (if (_proc57118_ _hd57145_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57144_ _r57124_))
                        (let ((__tmp63896
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57145_ _r57124_))))
                          (declare (not safe))
                          (_lp57121_ _rest57144_ __tmp63896))))))
            (if (let () (declare (not safe)) (##pair? _rest5712557133_))
                (let ((_hd5713057150_
                       (let () (declare (not safe)) (##car _rest5712557133_)))
                      (_tl5713157152_
                       (let () (declare (not safe)) (##cdr _rest5712557133_))))
                  (let* ((_hd57155_ _hd5713057150_)
                         (_rest57157_ _tl5713157152_))
                    (declare (not safe))
                    (_K5712957147_ _rest57157_ _hd57155_)))
                (let () (declare (not safe)) (_else5712757141_)))))))
    (define 1+ (lambda (_x57116_) (+ _x57116_ '1)))
    (define 1- (lambda (_x57114_) (- _x57114_ '1)))
    (define fx1+ (lambda (_x57112_) (fx+ _x57112_ '1)))
    (define fx1- (lambda (_x57110_) (fx- _x57110_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x57108_)
        (if (fixnum? _x57108_)
            (let () (declare (not safe)) (##fx>= _x57108_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x57106_)
        (if (fixnum? _x57106_)
            (let () (declare (not safe)) (##fx> _x57106_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x57104_) (let () (declare (not safe)) (eq? _x57104_ '0))))
    (define fx<0?
      (lambda (_x57102_)
        (if (fixnum? _x57102_)
            (let () (declare (not safe)) (##fx< _x57102_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x57100_)
        (if (fixnum? _x57100_)
            (let () (declare (not safe)) (##fx<= _x57100_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x57098_)
        (if (let () (declare (not safe)) (symbol? _x57098_))
            (let ((__tmp63897 (uninterned-symbol? _x57098_)))
              (declare (not safe))
              (not __tmp63897))
            '#f)))
    (define display-as-string
      (lambda (_x57070_ _port57071_)
        (if (or (let () (declare (not safe)) (string? _x57070_))
                (let () (declare (not safe)) (symbol? _x57070_))
                (keyword? _x57070_)
                (let () (declare (not safe)) (number? _x57070_))
                (let () (declare (not safe)) (char? _x57070_)))
            (display _x57070_ _port57071_)
            (if (let () (declare (not safe)) (pair? _x57070_))
                (begin
                  (let ((__tmp63898 (car _x57070_)))
                    (declare (not safe))
                    (display-as-string __tmp63898 _port57071_))
                  (let ((__tmp63899 (cdr _x57070_)))
                    (declare (not safe))
                    (display-as-string __tmp63899 _port57071_)))
                (if (let () (declare (not safe)) (vector? _x57070_))
                    (vector-for-each
                     (lambda (_g5708457086_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5708457086_ _port57071_)))
                     _x57070_)
                    (if (or (let () (declare (not safe)) (null? _x57070_))
                            (let ()
                              (declare (not safe))
                              (eq? _x57070_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x57070_))
                            (let () (declare (not safe)) (boolean? _x57070_)))
                        '#!void
                        (error '"cannot convert as string" _x57070_)))))))
    (define as-string__0
      (lambda (_x57058_)
        (if (let () (declare (not safe)) (string? _x57058_))
            _x57058_
            (if (let () (declare (not safe)) (symbol? _x57058_))
                (symbol->string _x57058_)
                (if (keyword? _x57058_)
                    (keyword->string _x57058_)
                    (call-with-output-string
                     '()
                     (lambda (_g5705957061_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x57058_ _g5705957061_)))))))))
    (define as-string__1
      (lambda _args57064_
        (call-with-output-string
         '()
         (lambda (_g5706557067_)
           (let ()
             (declare (not safe))
             (display-as-string _args57064_ _g5706557067_))))))
    (define as-string
      (lambda _g63901_
        (let ((_g63900_ (let () (declare (not safe)) (##length _g63901_))))
          (cond ((let () (declare (not safe)) (##fx= _g63900_ 1))
                 (apply (lambda (_x57058_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x57058_)))
                        _g63901_))
                (#t (apply as-string__1 _g63901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g63901_))))))
    (define make-symbol__0
      (lambda (_x57054_)
        (if (interned-symbol? _x57054_)
            _x57054_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x57054_))))))
    (define make-symbol__1
      (lambda _args57056_ (string->symbol (apply as-string _args57056_))))
    (define make-symbol
      (lambda _g63903_
        (let ((_g63902_ (let () (declare (not safe)) (##length _g63903_))))
          (cond ((let () (declare (not safe)) (##fx= _g63902_ 1))
                 (apply (lambda (_x57054_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x57054_)))
                        _g63903_))
                (#t (apply make-symbol__1 _g63903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g63903_))))))
    (define make-keyword__0
      (lambda (_x57050_)
        (if (interned-keyword? _x57050_)
            _x57050_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x57050_))))))
    (define make-keyword__1
      (lambda _args57052_ (string->keyword (apply as-string _args57052_))))
    (define make-keyword
      (lambda _g63905_
        (let ((_g63904_ (let () (declare (not safe)) (##length _g63905_))))
          (cond ((let () (declare (not safe)) (##fx= _g63904_ 1))
                 (apply (lambda (_x57050_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x57050_)))
                        _g63905_))
                (#t (apply make-keyword__1 _g63905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g63905_))))))
    (define interned-keyword?
      (lambda (_x57048_)
        (if (keyword? _x57048_)
            (let ((__tmp63906 (uninterned-keyword? _x57048_)))
              (declare (not safe))
              (not __tmp63906))
            '#f)))
    (define symbol->keyword
      (lambda (_sym57046_)
        ((if (uninterned-symbol? _sym57046_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym57046_))))
    (define keyword->symbol
      (lambda (_kw57044_)
        ((if (uninterned-keyword? _kw57044_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw57044_))))
    (define bytes->string__%
      (lambda (_bstr57022_ _enc57023_)
        (if (let () (declare (not safe)) (eq? _enc57023_ 'UTF-8))
            (utf8->string _bstr57022_)
            (let* ((_in57025_
                    (open-input-u8vector
                     (let ((__tmp63907
                            (let ((__tmp63908
                                   (let ((__tmp63909
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr57022_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp63909))))
                              (declare (not safe))
                              (cons _enc57023_ __tmp63908))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp63907))))
                   (_len57027_ (u8vector-length _bstr57022_))
                   (_out57029_ (make-string _len57027_))
                   (_n57031_
                    (read-substring _out57029_ '0 _len57027_ _in57025_)))
              (string-shrink! _out57029_ _n57031_)
              _out57029_))))
    (define bytes->string__0
      (lambda (_bstr57037_)
        (let ((_enc57039_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr57037_ _enc57039_))))
    (define bytes->string
      (lambda _g63911_
        (let ((_g63910_ (let () (declare (not safe)) (##length _g63911_))))
          (cond ((let () (declare (not safe)) (##fx= _g63910_ 1))
                 (apply (lambda (_bstr57037_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr57037_)))
                        _g63911_))
                ((let () (declare (not safe)) (##fx= _g63910_ 2))
                 (apply (lambda (_bstr57041_ _enc57042_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr57041_ _enc57042_)))
                        _g63911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g63911_))))))
    (define string->bytes__%
      (lambda (_str57008_ _enc57009_)
        (if (let () (declare (not safe)) (eq? _enc57009_ 'UTF-8))
            (string->utf8 _str57008_)
            (substring->bytes
             _str57008_
             '0
             (string-length _str57008_)
             _enc57009_))))
    (define string->bytes__0
      (lambda (_str57014_)
        (let ((_enc57016_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str57014_ _enc57016_))))
    (define string->bytes
      (lambda _g63913_
        (let ((_g63912_ (let () (declare (not safe)) (##length _g63913_))))
          (cond ((let () (declare (not safe)) (##fx= _g63912_ 1))
                 (apply (lambda (_str57014_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str57014_)))
                        _g63913_))
                ((let () (declare (not safe)) (##fx= _g63912_ 2))
                 (apply (lambda (_str57018_ _enc57019_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str57018_ _enc57019_)))
                        _g63913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g63913_))))))
    (define substring->bytes__%
      (lambda (_str56986_ _start56987_ _end56988_ _enc56989_)
        (if (let () (declare (not safe)) (eq? _enc56989_ 'UTF-8))
            (string->utf8 _str56986_ _start56987_ _end56988_)
            (let ((_out56991_
                   (open-output-u8vector
                    (let ((__tmp63914
                           (let ()
                             (declare (not safe))
                             (cons _enc56989_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp63914)))))
              (write-substring _str56986_ _start56987_ _end56988_ _out56991_)
              (get-output-u8vector _out56991_)))))
    (define substring->bytes__0
      (lambda (_str56996_ _start56997_ _end56998_)
        (let ((_enc57000_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str56996_
           _start56997_
           _end56998_
           _enc57000_))))
    (define substring->bytes
      (lambda _g63916_
        (let ((_g63915_ (let () (declare (not safe)) (##length _g63916_))))
          (cond ((let () (declare (not safe)) (##fx= _g63915_ 3))
                 (apply (lambda (_str56996_ _start56997_ _end56998_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str56996_
                             _start56997_
                             _end56998_)))
                        _g63916_))
                ((let () (declare (not safe)) (##fx= _g63915_ 4))
                 (apply (lambda (_str57002_ _start57003_ _end57004_ _enc57005_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str57002_
                             _start57003_
                             _end57004_
                             _enc57005_)))
                        _g63916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g63916_))))))
    (define string-empty?
      (lambda (_str56983_)
        (let ((__tmp63917 (string-length _str56983_)))
          (declare (not safe))
          (##fxzero? __tmp63917))))
    (define string-prefix?
      (lambda (_prefix56973_ _str56974_)
        (let ((_str-len56976_ (string-length _str56974_))
              (_prefix-len56977_ (string-length _prefix56973_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len56977_ _str-len56976_))
              (let _lp56979_ ((_i56981_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i56981_ _prefix-len56977_))
                    (if (let ((__tmp63920
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str56974_ _i56981_)))
                              (__tmp63919
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix56973_ _i56981_))))
                          (declare (not safe))
                          (eq? __tmp63920 __tmp63919))
                        (let ((__tmp63918
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i56981_ '1))))
                          (declare (not safe))
                          (_lp56979_ __tmp63918))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str56951_ _char56952_ _start56953_)
        (let ((_len56955_ (string-length _str56951_)))
          (let _lp56957_ ((_k56959_ _start56953_))
            (if (let () (declare (not safe)) (##fx< _k56959_ _len56955_))
                (if (let ((__tmp63922
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56951_ _k56959_))))
                      (declare (not safe))
                      (eq? _char56952_ __tmp63922))
                    _k56959_
                    (let ((__tmp63921
                           (let () (declare (not safe)) (##fx+ _k56959_ '1))))
                      (declare (not safe))
                      (_lp56957_ __tmp63921)))
                '#f)))))
    (define string-index__0
      (lambda (_str56964_ _char56965_)
        (let ((_start56967_ '0))
          (declare (not safe))
          (string-index__% _str56964_ _char56965_ _start56967_))))
    (define string-index
      (lambda _g63924_
        (let ((_g63923_ (let () (declare (not safe)) (##length _g63924_))))
          (cond ((let () (declare (not safe)) (##fx= _g63923_ 2))
                 (apply (lambda (_str56964_ _char56965_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str56964_ _char56965_)))
                        _g63924_))
                ((let () (declare (not safe)) (##fx= _g63923_ 3))
                 (apply (lambda (_str56969_ _char56970_ _start56971_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str56969_
                             _char56970_
                             _start56971_)))
                        _g63924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g63924_))))))
    (define string-rindex__%
      (lambda (_str56922_ _char56923_ _start56924_)
        (let* ((_len56926_ (string-length _str56922_))
               (_start56931_
                (let ((_$e56928_ _start56924_))
                  (if _$e56928_
                      _$e56928_
                      (let () (declare (not safe)) (##fx- _len56926_ '1))))))
          (let _lp56934_ ((_k56936_ _start56931_))
            (if (let () (declare (not safe)) (##fx>= _k56936_ '0))
                (if (let ((__tmp63926
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56922_ _k56936_))))
                      (declare (not safe))
                      (eq? _char56923_ __tmp63926))
                    _k56936_
                    (let ((__tmp63925
                           (let () (declare (not safe)) (##fx- _k56936_ '1))))
                      (declare (not safe))
                      (_lp56934_ __tmp63925)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str56941_ _char56942_)
        (let ((_start56944_ '#f))
          (declare (not safe))
          (string-rindex__% _str56941_ _char56942_ _start56944_))))
    (define string-rindex
      (lambda _g63928_
        (let ((_g63927_ (let () (declare (not safe)) (##length _g63928_))))
          (cond ((let () (declare (not safe)) (##fx= _g63927_ 2))
                 (apply (lambda (_str56941_ _char56942_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str56941_ _char56942_)))
                        _g63928_))
                ((let () (declare (not safe)) (##fx= _g63927_ 3))
                 (apply (lambda (_str56946_ _char56947_ _start56948_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str56946_
                             _char56947_
                             _start56948_)))
                        _g63928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g63928_))))))
    (define string-split
      (lambda (_str56906_ _char56907_)
        (let ((_len56909_ (string-length _str56906_)))
          (let _lp56911_ ((_start56913_ '0) (_r56914_ '()))
            (let ((_$e56916_
                   (let ()
                     (declare (not safe))
                     (string-index _str56906_ _char56907_ _start56913_))))
              (if _$e56916_
                  ((lambda (_end56919_)
                     (let ((__tmp63932
                            (let ()
                              (declare (not safe))
                              (##fx+ _end56919_ '1)))
                           (__tmp63930
                            (let ((__tmp63931
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56906_
                                      _start56913_
                                      _end56919_))))
                              (declare (not safe))
                              (cons __tmp63931 _r56914_))))
                       (declare (not safe))
                       (_lp56911_ __tmp63932 __tmp63930)))
                   _$e56916_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start56913_ _len56909_))
                      (let ((__tmp63929
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56906_
                                      _start56913_
                                      _len56909_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp63929 _r56914_))
                      (reverse _r56914_))))))))
    (define string-join
      (lambda (_strs56811_ _join56812_)
        (letrec ((_join-length56814_
                  (lambda (_strs56865_ _jlen56866_)
                    (let _lp56868_ ((_rest56870_ _strs56865_) (_len56871_ '0))
                      (let* ((_rest5687256880_ _rest56870_)
                             (_else5687456888_ (lambda () '0))
                             (_K5687656894_
                              (lambda (_rest56891_ _hd56892_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd56892_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest56891_))
                                        (let ((__tmp63934
                                               (let ((__tmp63935
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd56892_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp63935
                                                        _jlen56866_
                                                        _len56871_))))
                                          (declare (not safe))
                                          (_lp56868_ _rest56891_ __tmp63934))
                                        (let ((__tmp63933
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd56892_))))
                                          (declare (not safe))
                                          (##fx+ __tmp63933 _len56871_)))
                                    (error '"expected string" _hd56892_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5687256880_))
                            (let ((_hd5687756897_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5687256880_)))
                                  (_tl5687856899_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5687256880_))))
                              (let* ((_hd56902_ _hd5687756897_)
                                     (_rest56904_ _tl5687856899_))
                                (declare (not safe))
                                (_K5687656894_ _rest56904_ _hd56902_)))
                            (let ()
                              (declare (not safe))
                              (_else5687456888_))))))))
          (let* ((_join56816_
                  (if (let () (declare (not safe)) (char? _join56812_))
                      (string _join56812_)
                      (if (let () (declare (not safe)) (string? _join56812_))
                          _join56812_
                          (error '"expected string or char" _join56812_))))
                 (_jlen56818_
                  (let () (declare (not safe)) (##string-length _join56816_)))
                 (_olen56820_
                  (let ()
                    (declare (not safe))
                    (_join-length56814_ _strs56811_ _jlen56818_)))
                 (_ostr56822_ (make-string _olen56820_)))
            (let _lp56825_ ((_rest56827_ _strs56811_) (_k56828_ '0))
              (let* ((_rest5682956837_ _rest56827_)
                     (_else5683156845_ (lambda () '""))
                     (_K5683356853_
                      (lambda (_rest56848_ _hd56849_)
                        (let ((_hdlen56851_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd56849_))))
                          (if (let () (declare (not safe)) (pair? _rest56848_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56849_
                                   '0
                                   _hdlen56851_
                                   _ostr56822_
                                   _k56828_))
                                (let ((__tmp63936
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56828_ _hdlen56851_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join56816_
                                   '0
                                   _jlen56818_
                                   _ostr56822_
                                   __tmp63936))
                                (let ((__tmp63937
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56828_
                                                _hdlen56851_
                                                _jlen56818_))))
                                  (declare (not safe))
                                  (_lp56825_ _rest56848_ __tmp63937)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56849_
                                   '0
                                   _hdlen56851_
                                   _ostr56822_
                                   _k56828_))
                                _ostr56822_))))))
                (if (let () (declare (not safe)) (##pair? _rest5682956837_))
                    (let ((_hd5683456856_
                           (let ()
                             (declare (not safe))
                             (##car _rest5682956837_)))
                          (_tl5683556858_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5682956837_))))
                      (let* ((_hd56861_ _hd5683456856_)
                             (_rest56863_ _tl5683556858_))
                        (declare (not safe))
                        (_K5683356853_ _rest56863_ _hd56861_)))
                    (let () (declare (not safe)) (_else5683156845_)))))))))
    (define read-u8vector
      (lambda (_bytes56808_ _port56809_)
        (read-subu8vector
         _bytes56808_
         '0
         (u8vector-length _bytes56808_)
         _port56809_)))
    (define write-u8vector
      (lambda (_bytes56805_ _port56806_)
        (write-subu8vector
         _bytes56805_
         '0
         (u8vector-length _bytes56805_)
         _port56806_)))
    (define read-string
      (lambda (_str56802_ _port56803_)
        (read-substring _str56802_ '0 (string-length _str56802_) _port56803_)))
    (define write-string
      (lambda (_str56799_ _port56800_)
        (write-substring
         _str56799_
         '0
         (string-length _str56799_)
         _port56800_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag56768_
               _dbg-exprs56769_
               _dbg-thunks56770_
               _expr56771_
               _thunk56772_)
        (letrec ((_o56774_ (current-output-port))
                 (_e56775_ (current-error-port))
                 (_p56776_ (DBG-printer))
                 (_f56777_
                  (lambda () (force-output _o56774_) (force-output _e56775_)))
                 (_d56778_ (lambda (_x56785_) (display _x56785_ _e56775_)))
                 (_w56779_ (lambda (_x56787_) (_p56776_ _x56787_ _e56775_)))
                 (_n56780_ (lambda () (newline _e56775_)))
                 (_v56781_
                  (lambda (_l56790_)
                    (for-each
                     (lambda (_x56792_)
                       (let () (declare (not safe)) (_d56778_ '" "))
                       (let () (declare (not safe)) (_w56779_ _x56792_)))
                     _l56790_)
                    (let () (declare (not safe)) (_n56780_))))
                 (_x56782_
                  (lambda (_expr56794_ _thunk56795_)
                    (let () (declare (not safe)) (_f56777_))
                    (let () (declare (not safe)) (_d56778_ '"  "))
                    (let () (declare (not safe)) (_w56779_ _expr56794_))
                    (let () (declare (not safe)) (_d56778_ '" =>"))
                    (call-with-values
                     _thunk56795_
                     (lambda _x56797_
                       (let () (declare (not safe)) (_v56781_ _x56797_))
                       (let () (declare (not safe)) (_f56777_))
                       (apply values _x56797_))))))
          (if _tag56768_
              (begin
                (if (let () (declare (not safe)) (eq? _tag56768_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f56777_))
                      (let () (declare (not safe)) (_d56778_ _tag56768_))
                      (let () (declare (not safe)) (_n56780_))))
                (for-each _x56782_ _dbg-exprs56769_ _dbg-thunks56770_)
                (if _thunk56772_
                    (let ()
                      (declare (not safe))
                      (_x56782_ _expr56771_ _thunk56772_))
                    '#!void))
              (if _thunk56772_ (_thunk56772_) '#!void)))))))
