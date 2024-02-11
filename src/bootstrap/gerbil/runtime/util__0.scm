(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1707660399)
  (begin
    (define displayln
      (lambda _args58907_
        (let _lp58909_ ((_rest58911_ _args58907_))
          (let* ((_rest5891258920_ _rest58911_)
                 (_else5891458928_ (lambda () (newline)))
                 (_K5891658934_
                  (lambda (_rest58931_ _hd58932_)
                    (display _hd58932_)
                    (let () (declare (not safe)) (_lp58909_ _rest58931_)))))
            (if (let () (declare (not safe)) (##pair? _rest5891258920_))
                (let ((_hd5891758937_
                       (let () (declare (not safe)) (##car _rest5891258920_)))
                      (_tl5891858939_
                       (let () (declare (not safe)) (##cdr _rest5891258920_))))
                  (let* ((_hd58942_ _hd5891758937_)
                         (_rest58944_ _tl5891858939_))
                    (declare (not safe))
                    (_K5891658934_ _rest58944_ _hd58942_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args58905_ (for-each display _args58905_)))
    (define file-newer?
      (lambda (_file158898_ _file258899_)
        (letrec ((_modification-time58901_
                  (lambda (_file58903_)
                    (let ((__tmp63807
                           (file-info-last-modification-time
                            (file-info _file58903_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp63807)))))
          (let ((__tmp63809
                 (let ()
                   (declare (not safe))
                   (_modification-time58901_ _file158898_)))
                (__tmp63808
                 (let ()
                   (declare (not safe))
                   (_modification-time58901_ _file258899_))))
            (declare (not safe))
            (##fl> __tmp63809 __tmp63808)))))
    (define create-directory*__%
      (lambda (_dir58872_ _perms58873_)
        (letrec ((_create158875_
                  (lambda (_path58886_)
                    (if (file-exists? _path58886_)
                        (if (let ((__tmp63810 (file-type _path58886_)))
                              (declare (not safe))
                              (eq? __tmp63810 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path58886_))
                        (if _perms58873_
                            (create-directory
                             (list 'path:
                                   _path58886_
                                   'permissions:
                                   _perms58873_))
                            (create-directory _path58886_))))))
          (if (file-exists? _dir58872_)
              '#!void
              (let _lp58877_ ((_start58879_ '0))
                (let ((_$e58881_
                       (let ()
                         (declare (not safe))
                         (string-index _dir58872_ '#\/ _start58879_))))
                  (if _$e58881_
                      ((lambda (_x58884_)
                         (if (let () (declare (not safe)) (##fx> _x58884_ '0))
                             (let ((__tmp63811
                                    (substring _dir58872_ '0 _x58884_)))
                               (declare (not safe))
                               (_create158875_ __tmp63811))
                             '#!void)
                         (let ((__tmp63812
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x58884_ '1))))
                           (declare (not safe))
                           (_lp58877_ __tmp63812)))
                       _$e58881_)
                      (let ()
                        (declare (not safe))
                        (_create158875_ _dir58872_)))))))))
    (define create-directory*__0
      (lambda (_dir58891_)
        (let ((_perms58893_ '493))
          (declare (not safe))
          (create-directory*__% _dir58891_ _perms58893_))))
    (define create-directory*
      (lambda _g63814_
        (let ((_g63813_ (let () (declare (not safe)) (##length _g63814_))))
          (cond ((let () (declare (not safe)) (##fx= _g63813_ 1))
                 (apply (lambda (_dir58891_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir58891_)))
                        _g63814_))
                ((let () (declare (not safe)) (##fx= _g63813_ 2))
                 (apply (lambda (_dir58895_ _perms58896_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir58895_ _perms58896_)))
                        _g63814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g63814_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g63815_ '#t))
    (define true?
      (lambda (_obj58868_) (let () (declare (not safe)) (eq? _obj58868_ '#t))))
    (define false (lambda _g63816_ '#f))
    (define void (lambda _g63817_ '#!void))
    (define void?
      (lambda (_obj58864_)
        (let () (declare (not safe)) (eq? _obj58864_ '#!void))))
    (define eof-object (lambda _g63818_ '#!eof))
    (define identity (lambda (_obj58861_) _obj58861_))
    (define dssl-object?
      (lambda (_obj58859_)
        (if (memq _obj58859_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj58857_)
        (let () (declare (not safe)) (eq? _obj58857_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj58855_)
        (let () (declare (not safe)) (eq? _obj58855_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj58853_)
        (let () (declare (not safe)) (eq? _obj58853_ '#!optional))))
    (define immediate?
      (lambda (_obj58849_)
        (let* ((_t58851_ (let () (declare (not safe)) (##type _obj58849_)))
               (__tmp63819
                (let () (declare (not safe)) (##fxand _t58851_ '1))))
          (declare (not safe))
          (##fxzero? __tmp63819))))
    (define nonnegative-fixnum?
      (lambda (_obj58847_)
        (if (fixnum? _obj58847_)
            (let ((__tmp63820 (fxnegative? _obj58847_)))
              (declare (not safe))
              (not __tmp63820))
            '#f)))
    (define values-count
      (lambda (_obj58845_)
        (if (let () (declare (not safe)) (##values? _obj58845_))
            (let () (declare (not safe)) (##vector-length _obj58845_))
            '1)))
    (define values-ref
      (lambda (_obj58842_ _k58843_)
        (if (let () (declare (not safe)) (##values? _obj58842_))
            (let () (declare (not safe)) (##vector-ref _obj58842_ _k58843_))
            _obj58842_)))
    (define values->list
      (lambda (_obj58840_)
        (if (let () (declare (not safe)) (##values? _obj58840_))
            (let () (declare (not safe)) (##vector->list _obj58840_))
            (list _obj58840_))))
    (define subvector->list__%
      (lambda (_obj58825_ _start58826_)
        (let ((_lst58828_
               (let () (declare (not safe)) (##vector->list _obj58825_))))
          (list-tail _lst58828_ _start58826_))))
    (define subvector->list__0
      (lambda (_obj58833_)
        (let ((_start58835_ '0))
          (declare (not safe))
          (subvector->list__% _obj58833_ _start58835_))))
    (define subvector->list
      (lambda _g63822_
        (let ((_g63821_ (let () (declare (not safe)) (##length _g63822_))))
          (cond ((let () (declare (not safe)) (##fx= _g63821_ 1))
                 (apply (lambda (_obj58833_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj58833_)))
                        _g63822_))
                ((let () (declare (not safe)) (##fx= _g63821_ 2))
                 (apply (lambda (_obj58837_ _start58838_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj58837_ _start58838_)))
                        _g63822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g63822_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args58822_ (apply make-table 'test: eq? _args58822_)))
    (define make-hash-table-eqv
      (lambda _args58820_ (apply make-table 'test: eqv? _args58820_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst58817_ . _args58818_)
        (apply list->table _lst58817_ 'test: eq? _args58818_)))
    (define list->hash-table-eqv
      (lambda (_lst58814_ . _args58815_)
        (apply list->table _lst58814_ 'test: eqv? _args58815_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht58811_ _k58812_) (table-ref _ht58811_ _k58812_ '#f)))
    (define hash-put!
      (lambda (_ht58807_ _k58808_ _v58809_)
        (table-set! _ht58807_ _k58808_ _v58809_)))
    (define hash-update!__%
      (lambda (_ht58786_ _k58787_ _update58788_ _default58789_)
        (let* ((_value58791_
                (let ()
                  (declare (not safe))
                  (table-ref _ht58786_ _k58787_ _default58789_)))
               (__tmp63823 (_update58788_ _value58791_)))
          (declare (not safe))
          (table-set! _ht58786_ _k58787_ __tmp63823))))
    (define hash-update!__0
      (lambda (_ht58796_ _k58797_ _update58798_)
        (let ((_default58800_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht58796_ _k58797_ _update58798_ _default58800_))))
    (define hash-update!
      (lambda _g63825_
        (let ((_g63824_ (let () (declare (not safe)) (##length _g63825_))))
          (cond ((let () (declare (not safe)) (##fx= _g63824_ 3))
                 (apply (lambda (_ht58796_ _k58797_ _update58798_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _ht58796_
                             _k58797_
                             _update58798_)))
                        _g63825_))
                ((let () (declare (not safe)) (##fx= _g63824_ 4))
                 (apply (lambda (_ht58802_
                                 _k58803_
                                 _update58804_
                                 _default58805_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht58802_
                             _k58803_
                             _update58804_
                             _default58805_)))
                        _g63825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g63825_))))))
    (define hash-remove!
      (lambda (_ht58782_ _k58783_) (table-set! _ht58782_ _k58783_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht58780_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht58780_))))
    (define plist->hash-table__%
      (lambda (_plst58715_ _ht58716_)
        (let _lp58718_ ((_rest58720_ _plst58715_))
          (let* ((_rest5872158732_ _rest58720_)
                 (_E5872458736_
                  (lambda () (error '"No clause matching" _rest5872158732_))))
            (let ((_K5872658751_
                   (lambda (_rest58747_ _v58748_ _k58749_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht58716_ _k58749_ _v58748_))
                     (let () (declare (not safe)) (_lp58718_ _rest58747_))))
                  (_K5872558741_ (lambda () _ht58716_)))
              (let ((_try-match5872358744_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest5872158732_ '()))
                           (let () (declare (not safe)) (_K5872558741_))
                           (let () (declare (not safe)) (_E5872458736_))))))
                (if (let () (declare (not safe)) (##pair? _rest5872158732_))
                    (let ((_tl5872858756_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5872158732_)))
                          (_hd5872758754_
                           (let ()
                             (declare (not safe))
                             (##car _rest5872158732_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5872858756_))
                          (let ((_tl5873058763_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5872858756_)))
                                (_hd5872958761_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5872858756_))))
                            (let ((_k58759_ _hd5872758754_)
                                  (_v58766_ _hd5872958761_)
                                  (_rest58768_ _tl5873058763_))
                              (let ()
                                (declare (not safe))
                                (_K5872658751_
                                 _rest58768_
                                 _v58766_
                                 _k58759_))))
                          (let ()
                            (declare (not safe))
                            (_try-match5872358744_))))
                    (let ()
                      (declare (not safe))
                      (_try-match5872358744_)))))))))
    (define plist->hash-table__0
      (lambda (_plst58773_)
        (let ((_ht58775_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst58773_ _ht58775_))))
    (define plist->hash-table
      (lambda _g63827_
        (let ((_g63826_ (let () (declare (not safe)) (##length _g63827_))))
          (cond ((let () (declare (not safe)) (##fx= _g63826_ 1))
                 (apply (lambda (_plst58773_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst58773_)))
                        _g63827_))
                ((let () (declare (not safe)) (##fx= _g63826_ 2))
                 (apply (lambda (_plst58777_ _ht58778_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst58777_ _ht58778_)))
                        _g63827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g63827_))))))
    (define plist->hash-table-eq
      (lambda (_plst58712_)
        (let ((__tmp63828
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst58712_ __tmp63828))))
    (define plist->hash-table-eqv
      (lambda (_plst58710_)
        (let ((__tmp63829
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst58710_ __tmp63829))))
    (define hash-key?
      (lambda (_ht58707_ _k58708_)
        (let ((__tmp63830
               (let ((__tmp63831
                      (let ()
                        (declare (not safe))
                        (table-ref _ht58707_ _k58708_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp63831 absent-value))))
          (declare (not safe))
          (not __tmp63830))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun58700_ _ht58701_)
        (let ((__tmp63832
               (lambda (_k58703_ _v58704_ _r58705_)
                 (let ((__tmp63833 (_fun58700_ _k58703_ _v58704_)))
                   (declare (not safe))
                   (cons __tmp63833 _r58705_)))))
          (declare (not safe))
          (hash-fold __tmp63832 '() _ht58701_))))
    (define hash-fold
      (lambda (_fun58691_ _iv58692_ _ht58693_)
        (let ((_ret58695_ _iv58692_))
          (let ((__tmp63834
                 (lambda (_k58697_ _v58698_)
                   (set! _ret58695_
                         (_fun58691_ _k58697_ _v58698_ _ret58695_)))))
            (declare (not safe))
            (table-for-each __tmp63834 _ht58693_))
          _ret58695_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht58686_)
        (let ((__tmp63835 (lambda (_k58688_ _v58689_) _k58688_)))
          (declare (not safe))
          (hash-map __tmp63835 _ht58686_))))
    (define hash-values
      (lambda (_ht58681_)
        (let ((__tmp63836 (lambda (_k58683_ _v58684_) _v58684_)))
          (declare (not safe))
          (hash-map __tmp63836 _ht58681_))))
    (define hash-copy
      (lambda (_hd58676_ . _rest58677_)
        (let ((_hd58679_ (table-copy _hd58676_)))
          (if (let () (declare (not safe)) (null? _rest58677_))
              _hd58679_
              (apply hash-copy! _hd58679_ _rest58677_)))))
    (define hash-copy!
      (lambda (_hd58671_ . _rest58672_)
        (for-each
         (lambda (_r58674_) (table-merge! _hd58671_ _r58674_))
         _rest58672_)
        _hd58671_))
    (define hash-merge
      (lambda (_hd58665_ . _rest58666_)
        (let ((__tmp63837
               (lambda (_tab58668_ _r58669_)
                 (table-merge _r58669_ _tab58668_))))
          (declare (not safe))
          (foldl1 __tmp63837 _hd58665_ _rest58666_))))
    (define hash-merge!
      (lambda (_hd58659_ . _rest58660_)
        (let ((__tmp63838
               (lambda (_tab58662_ _r58663_)
                 (table-merge! _r58663_ _tab58662_))))
          (declare (not safe))
          (foldl1 __tmp63838 _hd58659_ _rest58660_))))
    (define hash-clear!__%
      (lambda (_ht58644_ _size58645_)
        (let ((_gcht58647_
               (let () (declare (not safe)) (##vector-ref _ht58644_ '5))))
          (if (let ((__tmp63839 (fixnum? _gcht58647_)))
                (declare (not safe))
                (not __tmp63839))
              (let ()
                (declare (not safe))
                (##vector-set! _ht58644_ '5 _size58645_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht58652_)
        (let ((_size58654_ '0))
          (declare (not safe))
          (hash-clear!__% _ht58652_ _size58654_))))
    (define hash-clear!
      (lambda _g63841_
        (let ((_g63840_ (let () (declare (not safe)) (##length _g63841_))))
          (cond ((let () (declare (not safe)) (##fx= _g63840_ 1))
                 (apply (lambda (_ht58652_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht58652_)))
                        _g63841_))
                ((let () (declare (not safe)) (##fx= _g63840_ 2))
                 (apply (lambda (_ht58656_ _size58657_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht58656_ _size58657_)))
                        _g63841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g63841_))))))
    (define make-list__%
      (lambda (_k58625_ _val58626_)
        (if (fixnum? _k58625_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k58625_))
        (let _lp58628_ ((_n58630_ '0) (_r58631_ '()))
          (if (let () (declare (not safe)) (##fx< _n58630_ _k58625_))
              (let ((__tmp63843
                     (let () (declare (not safe)) (##fx+ _n58630_ '1)))
                    (__tmp63842
                     (let () (declare (not safe)) (cons _val58626_ _r58631_))))
                (declare (not safe))
                (_lp58628_ __tmp63843 __tmp63842))
              _r58631_))))
    (define make-list__0
      (lambda (_k58636_)
        (let ((_val58638_ '#f))
          (declare (not safe))
          (make-list__% _k58636_ _val58638_))))
    (define make-list
      (lambda _g63845_
        (let ((_g63844_ (let () (declare (not safe)) (##length _g63845_))))
          (cond ((let () (declare (not safe)) (##fx= _g63844_ 1))
                 (apply (lambda (_k58636_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k58636_)))
                        _g63845_))
                ((let () (declare (not safe)) (##fx= _g63844_ 2))
                 (apply (lambda (_k58640_ _val58641_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k58640_ _val58641_)))
                        _g63845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g63845_))))))
    (define cons*
      (lambda (_x58615_ _y58616_ . _rest58617_)
        (letrec ((_recur58619_
                  (lambda (_x58621_ _rest58622_)
                    (if (let () (declare (not safe)) (pair? _rest58622_))
                        (let ((__tmp63846
                               (let ((__tmp63848
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest58622_)))
                                     (__tmp63847
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest58622_))))
                                 (declare (not safe))
                                 (_recur58619_ __tmp63848 __tmp63847))))
                          (declare (not safe))
                          (cons _x58621_ __tmp63846))
                        _x58621_))))
          (let ((__tmp63849
                 (let ()
                   (declare (not safe))
                   (_recur58619_ _y58616_ _rest58617_))))
            (declare (not safe))
            (cons _x58615_ __tmp63849)))))
    (define foldl1
      (lambda (_f58573_ _iv58574_ _lst58575_)
        (let _lp58577_ ((_rest58579_ _lst58575_) (_r58580_ _iv58574_))
          (let* ((_rest5858158589_ _rest58579_)
                 (_else5858358597_ (lambda () _r58580_))
                 (_K5858558603_
                  (lambda (_rest58600_ _x58601_)
                    (let ((__tmp63850 (_f58573_ _x58601_ _r58580_)))
                      (declare (not safe))
                      (_lp58577_ _rest58600_ __tmp63850)))))
            (if (let () (declare (not safe)) (##pair? _rest5858158589_))
                (let ((_hd5858658606_
                       (let () (declare (not safe)) (##car _rest5858158589_)))
                      (_tl5858758608_
                       (let () (declare (not safe)) (##cdr _rest5858158589_))))
                  (let* ((_x58611_ _hd5858658606_)
                         (_rest58613_ _tl5858758608_))
                    (declare (not safe))
                    (_K5858558603_ _rest58613_ _x58611_)))
                (let () (declare (not safe)) (_else5858358597_)))))))
    (define foldl2
      (lambda (_f58496_ _iv58497_ _lst158498_ _lst258499_)
        (let _lp58501_ ((_rest158503_ _lst158498_)
                        (_rest258504_ _lst258499_)
                        (_r58505_ _iv58497_))
          (let* ((_rest15850658514_ _rest158503_)
                 (_else5850858522_ (lambda () _r58505_))
                 (_K5851058561_
                  (lambda (_rest158525_ _x158526_)
                    (let* ((_rest25852758535_ _rest258504_)
                           (_else5852958543_ (lambda () _r58505_))
                           (_K5853158549_
                            (lambda (_rest258546_ _x258547_)
                              (let ((__tmp63851
                                     (_f58496_ _x158526_ _x258547_ _r58505_)))
                                (declare (not safe))
                                (_lp58501_
                                 _rest158525_
                                 _rest258546_
                                 __tmp63851)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25852758535_))
                          (let ((_hd5853258552_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25852758535_)))
                                (_tl5853358554_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25852758535_))))
                            (let* ((_x258557_ _hd5853258552_)
                                   (_rest258559_ _tl5853358554_))
                              (declare (not safe))
                              (_K5853158549_ _rest258559_ _x258557_)))
                          (let () (declare (not safe)) (_else5852958543_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15850658514_))
                (let ((_hd5851158564_
                       (let () (declare (not safe)) (##car _rest15850658514_)))
                      (_tl5851258566_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15850658514_))))
                  (let* ((_x158569_ _hd5851158564_)
                         (_rest158571_ _tl5851258566_))
                    (declare (not safe))
                    (_K5851058561_ _rest158571_ _x158569_)))
                (let () (declare (not safe)) (_else5850858522_)))))))
    (define foldl
      (lambda _g63853_
        (let ((_g63852_ (let () (declare (not safe)) (##length _g63853_))))
          (cond ((let () (declare (not safe)) (##fx= _g63852_ 3))
                 (apply (lambda (_f58481_ _iv58482_ _lst58483_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f58481_ _iv58482_ _lst58483_)))
                        _g63853_))
                ((let () (declare (not safe)) (##fx= _g63852_ 4))
                 (apply (lambda (_f58485_ _iv58486_ _lst158487_ _lst258488_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f58485_
                                    _iv58486_
                                    _lst158487_
                                    _lst258488_)))
                        _g63853_))
                ((let () (declare (not safe)) (##fx>= _g63852_ 4))
                 (apply foldl* _g63853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g63853_))))))
    (define foldl*
      (lambda (_f58469_ _iv58470_ . _rest58471_)
        (let _recur58473_ ((_iv58475_ _iv58470_) (_rest58476_ _rest58471_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58476_))
              (let ((__tmp63855
                     (apply _f58469_
                            (let ((__tmp63857
                                   (lambda (_xs58478_ _r58479_)
                                     (let ((__tmp63858 (car _xs58478_)))
                                       (declare (not safe))
                                       (cons __tmp63858 _r58479_))))
                                  (__tmp63856 (list _iv58475_)))
                              (declare (not safe))
                              (foldr1 __tmp63857 __tmp63856 _rest58476_))))
                    (__tmp63854 (map cdr _rest58476_)))
                (declare (not safe))
                (_recur58473_ __tmp63855 __tmp63854))
              _iv58475_))))
    (define foldr1
      (lambda (_f58428_ _iv58429_ _lst58430_)
        (let _recur58432_ ((_rest58434_ _lst58430_))
          (let* ((_rest5843558443_ _rest58434_)
                 (_else5843758451_ (lambda () _iv58429_))
                 (_K5843958457_
                  (lambda (_rest58454_ _x58455_)
                    (_f58428_
                     _x58455_
                     (let ()
                       (declare (not safe))
                       (_recur58432_ _rest58454_))))))
            (if (let () (declare (not safe)) (##pair? _rest5843558443_))
                (let ((_hd5844058460_
                       (let () (declare (not safe)) (##car _rest5843558443_)))
                      (_tl5844158462_
                       (let () (declare (not safe)) (##cdr _rest5843558443_))))
                  (let* ((_x58465_ _hd5844058460_)
                         (_rest58467_ _tl5844158462_))
                    (declare (not safe))
                    (_K5843958457_ _rest58467_ _x58465_)))
                (let () (declare (not safe)) (_else5843758451_)))))))
    (define foldr2
      (lambda (_f58352_ _iv58353_ _lst158354_ _lst258355_)
        (let _recur58357_ ((_rest158359_ _lst158354_)
                           (_rest258360_ _lst258355_))
          (let* ((_rest15836158369_ _rest158359_)
                 (_else5836358377_ (lambda () _iv58353_))
                 (_K5836558416_
                  (lambda (_rest158380_ _x158381_)
                    (let* ((_rest25838258390_ _rest258360_)
                           (_else5838458398_ (lambda () _iv58353_))
                           (_K5838658404_
                            (lambda (_rest258401_ _x258402_)
                              (_f58352_
                               _x158381_
                               _x258402_
                               (let ()
                                 (declare (not safe))
                                 (_recur58357_ _rest158380_ _rest258401_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25838258390_))
                          (let ((_hd5838758407_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25838258390_)))
                                (_tl5838858409_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25838258390_))))
                            (let* ((_x258412_ _hd5838758407_)
                                   (_rest258414_ _tl5838858409_))
                              (declare (not safe))
                              (_K5838658404_ _rest258414_ _x258412_)))
                          (let () (declare (not safe)) (_else5838458398_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15836158369_))
                (let ((_hd5836658419_
                       (let () (declare (not safe)) (##car _rest15836158369_)))
                      (_tl5836758421_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15836158369_))))
                  (let* ((_x158424_ _hd5836658419_)
                         (_rest158426_ _tl5836758421_))
                    (declare (not safe))
                    (_K5836558416_ _rest158426_ _x158424_)))
                (let () (declare (not safe)) (_else5836358377_)))))))
    (define foldr
      (lambda _g63860_
        (let ((_g63859_ (let () (declare (not safe)) (##length _g63860_))))
          (cond ((let () (declare (not safe)) (##fx= _g63859_ 3))
                 (apply (lambda (_f58337_ _iv58338_ _lst58339_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f58337_ _iv58338_ _lst58339_)))
                        _g63860_))
                ((let () (declare (not safe)) (##fx= _g63859_ 4))
                 (apply (lambda (_f58341_ _iv58342_ _lst158343_ _lst258344_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f58341_
                                    _iv58342_
                                    _lst158343_
                                    _lst258344_)))
                        _g63860_))
                ((let () (declare (not safe)) (##fx>= _g63859_ 4))
                 (apply foldr* _g63860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g63860_))))))
    (define foldr*
      (lambda (_f58326_ _iv58327_ . _rest58328_)
        (let _recur58330_ ((_rest58332_ _rest58328_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58332_))
              (apply _f58326_
                     (let ((__tmp63863
                            (lambda (_xs58334_ _r58335_)
                              (let ((__tmp63864 (car _xs58334_)))
                                (declare (not safe))
                                (cons __tmp63864 _r58335_))))
                           (__tmp63861
                            (list (let ((__tmp63862 (map cdr _rest58332_)))
                                    (declare (not safe))
                                    (_recur58330_ __tmp63862)))))
                       (declare (not safe))
                       (foldr1 __tmp63863 __tmp63861 _rest58332_)))
              _iv58327_))))
    (define remove-nulls!
      (lambda (_l58213_)
        (let* ((_l5821458227_ _l58213_)
               (_E5821858231_
                (lambda () (error '"No clause matching" _l5821458227_))))
          (let ((_K5822358316_
                 (lambda (_r58314_)
                   (let () (declare (not safe)) (remove-nulls! _r58314_))))
                (_K5822058303_
                 (lambda (_r58243_)
                   (let _loop58245_ ((_l58247_ _l58213_) (_r58248_ _r58243_))
                     (let* ((_r5824958262_ _r58248_)
                            (_E5825358266_
                             (lambda ()
                               (error '"No clause matching" _r5824958262_))))
                       (let ((_K5825858293_
                              (lambda (_rr58291_)
                                (set-cdr!
                                 _l58247_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr58291_)))))
                             (_K5825558280_
                              (lambda (_rr58278_)
                                (let ()
                                  (declare (not safe))
                                  (_loop58245_ _r58248_ _rr58278_))))
                             (_K5825458271_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5824958262_))
                             (let ((_tl5826058298_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5824958262_)))
                                   (_hd5825958296_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5824958262_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5825958296_))
                                   (let ((_rr58301_ _tl5826058298_))
                                     (declare (not safe))
                                     (_K5825858293_ _rr58301_))
                                   (let ((_rr58286_ _tl5826058298_))
                                     (declare (not safe))
                                     (_K5825558280_ _rr58286_))))
                             '#!void))))
                   _l58213_))
                (_K5821958236_ (lambda () _l58213_)))
            (if (let () (declare (not safe)) (##pair? _l5821458227_))
                (let ((_tl5822558321_
                       (let () (declare (not safe)) (##cdr _l5821458227_)))
                      (_hd5822458319_
                       (let () (declare (not safe)) (##car _l5821458227_))))
                  (if (let () (declare (not safe)) (##null? _hd5822458319_))
                      (let ((_r58324_ _tl5822558321_))
                        (declare (not safe))
                        (remove-nulls! _r58324_))
                      (let ((_r58309_ _tl5822558321_))
                        (declare (not safe))
                        (_K5822058303_ _r58309_))))
                (let () (declare (not safe)) (_K5821958236_)))))))
    (define append1!
      (lambda (_l58208_ _x58209_)
        (let ((_l258211_ (let () (declare (not safe)) (cons _x58209_ '()))))
          (if (let () (declare (not safe)) (pair? _l58208_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l58208_))
               _l258211_)
              _l258211_))))
    (define append-reverse
      (lambda (_rev-head58205_ _tail58206_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail58206_ _rev-head58205_))))
    (define append-reverse-until
      (lambda (_pred58158_ _rhead58159_ _tail58160_)
        (let _loop58162_ ((_rhead58164_ _rhead58159_)
                          (_tail58165_ _tail58160_))
          (let* ((_rhead5816658175_ _rhead58164_)
                 (_E5816958179_
                  (lambda () (error '"No clause matching" _rhead5816658175_))))
            (let ((_K5817358202_ (lambda () (values '() _tail58165_)))
                  (_K5817058186_
                   (lambda (_r58183_ _a58184_)
                     (if (_pred58158_ _a58184_)
                         (values _rhead58164_ _tail58165_)
                         (let ((__tmp63865
                                (let ()
                                  (declare (not safe))
                                  (cons _a58184_ _tail58165_))))
                           (declare (not safe))
                           (_loop58162_ _r58183_ __tmp63865))))))
              (let ((_try-match5816858198_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5816658175_))
                           (let ((_tl5817258191_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5816658175_)))
                                 (_hd5817158189_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5816658175_))))
                             (let ((_a58194_ _hd5817158189_)
                                   (_r58196_ _tl5817258191_))
                               (let ()
                                 (declare (not safe))
                                 (_K5817058186_ _r58196_ _a58194_))))
                           (let () (declare (not safe)) (_E5816958179_))))))
                (if (let () (declare (not safe)) (##null? _rhead5816658175_))
                    (let () (declare (not safe)) (_K5817358202_))
                    (let ()
                      (declare (not safe))
                      (_try-match5816858198_)))))))))
    (define andmap1
      (lambda (_f58118_ _lst58119_)
        (let _lp58121_ ((_rest58123_ _lst58119_))
          (let* ((_rest5812458132_ _rest58123_)
                 (_else5812658140_ (lambda () '#t))
                 (_K5812858146_
                  (lambda (_rest58143_ _x58144_)
                    (if (_f58118_ _x58144_)
                        (let () (declare (not safe)) (_lp58121_ _rest58143_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5812458132_))
                (let ((_hd5812958149_
                       (let () (declare (not safe)) (##car _rest5812458132_)))
                      (_tl5813058151_
                       (let () (declare (not safe)) (##cdr _rest5812458132_))))
                  (let* ((_x58154_ _hd5812958149_)
                         (_rest58156_ _tl5813058151_))
                    (declare (not safe))
                    (_K5812858146_ _rest58156_ _x58154_)))
                (let () (declare (not safe)) (_else5812658140_)))))))
    (define andmap2
      (lambda (_f58043_ _lst158044_ _lst258045_)
        (let _lp58047_ ((_rest158049_ _lst158044_) (_rest258050_ _lst258045_))
          (let* ((_rest15805158059_ _rest158049_)
                 (_else5805358067_ (lambda () '#t))
                 (_K5805558106_
                  (lambda (_rest158070_ _x158071_)
                    (let* ((_rest25807258080_ _rest258050_)
                           (_else5807458088_ (lambda () '#t))
                           (_K5807658094_
                            (lambda (_rest258091_ _x258092_)
                              (if (_f58043_ _x158071_ _x258092_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp58047_ _rest158070_ _rest258091_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25807258080_))
                          (let ((_hd5807758097_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25807258080_)))
                                (_tl5807858099_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25807258080_))))
                            (let* ((_x258102_ _hd5807758097_)
                                   (_rest258104_ _tl5807858099_))
                              (declare (not safe))
                              (_K5807658094_ _rest258104_ _x258102_)))
                          (let () (declare (not safe)) (_else5807458088_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15805158059_))
                (let ((_hd5805658109_
                       (let () (declare (not safe)) (##car _rest15805158059_)))
                      (_tl5805758111_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15805158059_))))
                  (let* ((_x158114_ _hd5805658109_)
                         (_rest158116_ _tl5805758111_))
                    (declare (not safe))
                    (_K5805558106_ _rest158116_ _x158114_)))
                (let () (declare (not safe)) (_else5805358067_)))))))
    (define andmap
      (lambda _g63867_
        (let ((_g63866_ (let () (declare (not safe)) (##length _g63867_))))
          (cond ((let () (declare (not safe)) (##fx= _g63866_ 2))
                 (apply (lambda (_f58031_ _lst58032_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f58031_ _lst58032_)))
                        _g63867_))
                ((let () (declare (not safe)) (##fx= _g63866_ 3))
                 (apply (lambda (_f58034_ _lst158035_ _lst258036_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f58034_ _lst158035_ _lst258036_)))
                        _g63867_))
                ((let () (declare (not safe)) (##fx>= _g63866_ 3))
                 (apply andmap* _g63867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g63867_))))))
    (define andmap*
      (lambda (_f58024_ . _rest58025_)
        (let _recur58027_ ((_rest58029_ _rest58025_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58029_))
              (if (apply _f58024_ (map car _rest58029_))
                  (let ((__tmp63868 (map cdr _rest58029_)))
                    (declare (not safe))
                    (_recur58027_ __tmp63868))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f57981_ _lst57982_)
        (let _lp57984_ ((_rest57986_ _lst57982_))
          (let* ((_rest5798757995_ _rest57986_)
                 (_else5798958003_ (lambda () '#f))
                 (_K5799158012_
                  (lambda (_rest58006_ _x58007_)
                    (let ((_$e58009_ (_f57981_ _x58007_)))
                      (if _$e58009_
                          _$e58009_
                          (let ()
                            (declare (not safe))
                            (_lp57984_ _rest58006_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5798757995_))
                (let ((_hd5799258015_
                       (let () (declare (not safe)) (##car _rest5798757995_)))
                      (_tl5799358017_
                       (let () (declare (not safe)) (##cdr _rest5798757995_))))
                  (let* ((_x58020_ _hd5799258015_)
                         (_rest58022_ _tl5799358017_))
                    (declare (not safe))
                    (_K5799158012_ _rest58022_ _x58020_)))
                (let () (declare (not safe)) (_else5798958003_)))))))
    (define ormap2
      (lambda (_f57903_ _lst157904_ _lst257905_)
        (let _lp57907_ ((_rest157909_ _lst157904_) (_rest257910_ _lst257905_))
          (let* ((_rest15791157919_ _rest157909_)
                 (_else5791357927_ (lambda () '#f))
                 (_K5791557969_
                  (lambda (_rest157930_ _x157931_)
                    (let* ((_rest25793257940_ _rest257910_)
                           (_else5793457948_ (lambda () '#f))
                           (_K5793657957_
                            (lambda (_rest257951_ _x257952_)
                              (let ((_$e57954_ (_f57903_ _x157931_ _x257952_)))
                                (if _$e57954_
                                    _$e57954_
                                    (let ()
                                      (declare (not safe))
                                      (_lp57907_
                                       _rest157930_
                                       _rest257951_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25793257940_))
                          (let ((_hd5793757960_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25793257940_)))
                                (_tl5793857962_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25793257940_))))
                            (let* ((_x257965_ _hd5793757960_)
                                   (_rest257967_ _tl5793857962_))
                              (declare (not safe))
                              (_K5793657957_ _rest257967_ _x257965_)))
                          (let () (declare (not safe)) (_else5793457948_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15791157919_))
                (let ((_hd5791657972_
                       (let () (declare (not safe)) (##car _rest15791157919_)))
                      (_tl5791757974_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15791157919_))))
                  (let* ((_x157977_ _hd5791657972_)
                         (_rest157979_ _tl5791757974_))
                    (declare (not safe))
                    (_K5791557969_ _rest157979_ _x157977_)))
                (let () (declare (not safe)) (_else5791357927_)))))))
    (define ormap
      (lambda _g63870_
        (let ((_g63869_ (let () (declare (not safe)) (##length _g63870_))))
          (cond ((let () (declare (not safe)) (##fx= _g63869_ 2))
                 (apply (lambda (_f57891_ _lst57892_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f57891_ _lst57892_)))
                        _g63870_))
                ((let () (declare (not safe)) (##fx= _g63869_ 3))
                 (apply (lambda (_f57894_ _lst157895_ _lst257896_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f57894_ _lst157895_ _lst257896_)))
                        _g63870_))
                ((let () (declare (not safe)) (##fx>= _g63869_ 3))
                 (apply ormap* _g63870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g63870_))))))
    (define ormap*
      (lambda (_f57881_ . _rest57882_)
        (let _recur57884_ ((_rest57886_ _rest57882_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57886_))
              (let ((_$e57888_ (apply _f57881_ (map car _rest57886_))))
                (if _$e57888_
                    _$e57888_
                    (let ((__tmp63871 (map cdr _rest57886_)))
                      (declare (not safe))
                      (_recur57884_ __tmp63871))))
              '#f))))
    (define filter
      (lambda (_f57839_ _lst57840_)
        (let _recur57842_ ((_lst57844_ _lst57840_))
          (let* ((_lst5784557853_ _lst57844_)
                 (_else5784757861_ (lambda () '()))
                 (_K5784957869_
                  (lambda (_rest57864_ _hd57865_)
                    (if (_f57839_ _hd57865_)
                        (let ((_tail57867_
                               (let ()
                                 (declare (not safe))
                                 (_recur57842_ _rest57864_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail57867_ _rest57864_))
                              _lst57844_
                              (let ()
                                (declare (not safe))
                                (cons _hd57865_ _tail57867_))))
                        (let ()
                          (declare (not safe))
                          (_recur57842_ _rest57864_))))))
            (if (let () (declare (not safe)) (##pair? _lst5784557853_))
                (let ((_hd5785057872_
                       (let () (declare (not safe)) (##car _lst5784557853_)))
                      (_tl5785157874_
                       (let () (declare (not safe)) (##cdr _lst5784557853_))))
                  (let* ((_hd57877_ _hd5785057872_)
                         (_rest57879_ _tl5785157874_))
                    (declare (not safe))
                    (_K5784957869_ _rest57879_ _hd57877_)))
                (let () (declare (not safe)) (_else5784757861_)))))))
    (define filter-map1
      (lambda (_f57794_ _lst57795_)
        (let _recur57797_ ((_rest57799_ _lst57795_))
          (let* ((_rest5780057808_ _rest57799_)
                 (_else5780257816_ (lambda () '()))
                 (_K5780457827_
                  (lambda (_rest57819_ _x57820_)
                    (let ((_$e57822_ (_f57794_ _x57820_)))
                      (if _$e57822_
                          ((lambda (_r57825_)
                             (let ((__tmp63872
                                    (let ()
                                      (declare (not safe))
                                      (_recur57797_ _rest57819_))))
                               (declare (not safe))
                               (cons _r57825_ __tmp63872)))
                           _$e57822_)
                          (let ()
                            (declare (not safe))
                            (_recur57797_ _rest57819_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5780057808_))
                (let ((_hd5780557830_
                       (let () (declare (not safe)) (##car _rest5780057808_)))
                      (_tl5780657832_
                       (let () (declare (not safe)) (##cdr _rest5780057808_))))
                  (let* ((_x57835_ _hd5780557830_)
                         (_rest57837_ _tl5780657832_))
                    (declare (not safe))
                    (_K5780457827_ _rest57837_ _x57835_)))
                (let () (declare (not safe)) (_else5780257816_)))))))
    (define filter-map2
      (lambda (_f57714_ _lst157715_ _lst257716_)
        (let _recur57718_ ((_rest157720_ _lst157715_)
                           (_rest257721_ _lst257716_))
          (let* ((_rest15772257730_ _rest157720_)
                 (_else5772457738_ (lambda () '()))
                 (_K5772657782_
                  (lambda (_rest157741_ _x157742_)
                    (let* ((_rest25774357751_ _rest257721_)
                           (_else5774557759_ (lambda () '()))
                           (_K5774757770_
                            (lambda (_rest257762_ _x257763_)
                              (let ((_$e57765_ (_f57714_ _x157742_ _x257763_)))
                                (if _$e57765_
                                    ((lambda (_r57768_)
                                       (let ((__tmp63873
                                              (let ()
                                                (declare (not safe))
                                                (_recur57718_
                                                 _rest157741_
                                                 _rest257762_))))
                                         (declare (not safe))
                                         (cons _r57768_ __tmp63873)))
                                     _$e57765_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur57718_
                                       _rest157741_
                                       _rest257762_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25774357751_))
                          (let ((_hd5774857773_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25774357751_)))
                                (_tl5774957775_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25774357751_))))
                            (let* ((_x257778_ _hd5774857773_)
                                   (_rest257780_ _tl5774957775_))
                              (declare (not safe))
                              (_K5774757770_ _rest257780_ _x257778_)))
                          (let () (declare (not safe)) (_else5774557759_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15772257730_))
                (let ((_hd5772757785_
                       (let () (declare (not safe)) (##car _rest15772257730_)))
                      (_tl5772857787_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15772257730_))))
                  (let* ((_x157790_ _hd5772757785_)
                         (_rest157792_ _tl5772857787_))
                    (declare (not safe))
                    (_K5772657782_ _rest157792_ _x157790_)))
                (let () (declare (not safe)) (_else5772457738_)))))))
    (define filter-map
      (lambda _g63875_
        (let ((_g63874_ (let () (declare (not safe)) (##length _g63875_))))
          (cond ((let () (declare (not safe)) (##fx= _g63874_ 2))
                 (apply (lambda (_f57702_ _lst57703_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f57702_ _lst57703_)))
                        _g63875_))
                ((let () (declare (not safe)) (##fx= _g63874_ 3))
                 (apply (lambda (_f57705_ _lst157706_ _lst257707_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f57705_ _lst157706_ _lst257707_)))
                        _g63875_))
                ((let () (declare (not safe)) (##fx>= _g63874_ 3))
                 (apply filter-map* _g63875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g63875_))))))
    (define filter-map*
      (lambda (_f57690_ . _rest57691_)
        (let _recur57693_ ((_rest57695_ _rest57691_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57695_))
              (let ((_$e57697_ (apply _f57690_ (map car _rest57695_))))
                (if _$e57697_
                    ((lambda (_r57700_)
                       (let ((__tmp63877
                              (let ((__tmp63878 (map cdr _rest57695_)))
                                (declare (not safe))
                                (_recur57693_ __tmp63878))))
                         (declare (not safe))
                         (cons _r57700_ __tmp63877)))
                     _$e57697_)
                    (let ((__tmp63876 (map cdr _rest57695_)))
                      (declare (not safe))
                      (_recur57693_ __tmp63876))))
              '()))))
    (define iota__%
      (lambda (_count57658_ _start57659_ _step57660_)
        (if (fixnum? _count57658_)
            '#!void
            (error '"expected fixnum" _count57658_))
        (if (let () (declare (not safe)) (number? _start57659_))
            '#!void
            (error '"expected number" _start57659_))
        (if (let () (declare (not safe)) (number? _step57660_))
            '#!void
            (error '"expected number" _step57660_))
        (let ((_root57662_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp57664_ ((_i57666_ '0)
                          (_x57667_ _start57659_)
                          (_tl57668_ _root57662_))
            (if (let () (declare (not safe)) (##fx< _i57666_ _count57658_))
                (let ((_tl*57670_
                       (let () (declare (not safe)) (cons _x57667_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl57668_ _tl*57670_))
                  (let ((__tmp63880
                         (let () (declare (not safe)) (##fx+ _i57666_ '1)))
                        (__tmp63879 (+ _x57667_ _step57660_)))
                    (declare (not safe))
                    (_lp57664_ __tmp63880 __tmp63879 _tl*57670_)))
                (let () (declare (not safe)) (##cdr _root57662_)))))))
    (define iota__0
      (lambda (_count57675_)
        (let* ((_start57677_ '0) (_step57679_ '1))
          (declare (not safe))
          (iota__% _count57675_ _start57677_ _step57679_))))
    (define iota__1
      (lambda (_count57681_ _start57682_)
        (let ((_step57684_ '1))
          (declare (not safe))
          (iota__% _count57681_ _start57682_ _step57684_))))
    (define iota
      (lambda _g63882_
        (let ((_g63881_ (let () (declare (not safe)) (##length _g63882_))))
          (cond ((let () (declare (not safe)) (##fx= _g63881_ 1))
                 (apply (lambda (_count57675_)
                          (let () (declare (not safe)) (iota__0 _count57675_)))
                        _g63882_))
                ((let () (declare (not safe)) (##fx= _g63881_ 2))
                 (apply (lambda (_count57681_ _start57682_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count57681_ _start57682_)))
                        _g63882_))
                ((let () (declare (not safe)) (##fx= _g63881_ 3))
                 (apply (lambda (_count57686_ _start57687_ _step57688_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count57686_ _start57687_ _step57688_)))
                        _g63882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g63882_))))))
    (define last-pair
      (lambda (_lst57632_)
        (let* ((_lst5763357640_ _lst57632_)
               (_E5763557644_
                (lambda () (error '"No clause matching" _lst5763357640_)))
               (_K5763657649_
                (lambda (_rest57647_)
                  (if (let () (declare (not safe)) (pair? _rest57647_))
                      (let () (declare (not safe)) (last-pair _rest57647_))
                      _lst57632_))))
          (if (let () (declare (not safe)) (##pair? _lst5763357640_))
              (let* ((_tl5763857652_
                      (let () (declare (not safe)) (##cdr _lst5763357640_)))
                     (_rest57655_ _tl5763857652_))
                (declare (not safe))
                (_K5763657649_ _rest57655_))
              (let () (declare (not safe)) (_E5763557644_))))))
    (define last
      (lambda (_lst57630_)
        (car (let () (declare (not safe)) (last-pair _lst57630_)))))
    (define assgetq__%
      (lambda (_key57608_ _lst57610_ _default57612_)
        (let ((_$e57615_
               (if (let () (declare (not safe)) (pair? _lst57610_))
                   (assq _key57608_ _lst57610_)
                   '#f)))
          (if _$e57615_
              (cdr _$e57615_)
              (if (let () (declare (not safe)) (procedure? _default57612_))
                  (_default57612_ _key57608_)
                  _default57612_)))))
    (define assgetq__0
      (lambda (_key57621_ _lst57622_)
        (let ((_default57624_ '#f))
          (declare (not safe))
          (assgetq__% _key57621_ _lst57622_ _default57624_))))
    (define assgetq
      (lambda _g63884_
        (let ((_g63883_ (let () (declare (not safe)) (##length _g63884_))))
          (cond ((let () (declare (not safe)) (##fx= _g63883_ 2))
                 (apply (lambda (_key57621_ _lst57622_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key57621_ _lst57622_)))
                        _g63884_))
                ((let () (declare (not safe)) (##fx= _g63883_ 3))
                 (apply (lambda (_key57626_ _lst57627_ _default57628_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key57626_ _lst57627_ _default57628_)))
                        _g63884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g63884_))))))
    (define assgetv__%
      (lambda (_key57585_ _lst57587_ _default57589_)
        (let ((_$e57592_
               (if (let () (declare (not safe)) (pair? _lst57587_))
                   (assv _key57585_ _lst57587_)
                   '#f)))
          (if _$e57592_
              (cdr _$e57592_)
              (if (let () (declare (not safe)) (procedure? _default57589_))
                  (_default57589_ _key57585_)
                  _default57589_)))))
    (define assgetv__0
      (lambda (_key57598_ _lst57599_)
        (let ((_default57601_ '#f))
          (declare (not safe))
          (assgetv__% _key57598_ _lst57599_ _default57601_))))
    (define assgetv
      (lambda _g63886_
        (let ((_g63885_ (let () (declare (not safe)) (##length _g63886_))))
          (cond ((let () (declare (not safe)) (##fx= _g63885_ 2))
                 (apply (lambda (_key57598_ _lst57599_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key57598_ _lst57599_)))
                        _g63886_))
                ((let () (declare (not safe)) (##fx= _g63885_ 3))
                 (apply (lambda (_key57603_ _lst57604_ _default57605_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key57603_ _lst57604_ _default57605_)))
                        _g63886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g63886_))))))
    (define assget__%
      (lambda (_key57562_ _lst57564_ _default57566_)
        (let ((_$e57569_
               (if (let () (declare (not safe)) (pair? _lst57564_))
                   (assoc _key57562_ _lst57564_)
                   '#f)))
          (if _$e57569_
              (cdr _$e57569_)
              (if (let () (declare (not safe)) (procedure? _default57566_))
                  (_default57566_ _key57562_)
                  _default57566_)))))
    (define assget__0
      (lambda (_key57575_ _lst57576_)
        (let ((_default57578_ '#f))
          (declare (not safe))
          (assget__% _key57575_ _lst57576_ _default57578_))))
    (define assget
      (lambda _g63888_
        (let ((_g63887_ (let () (declare (not safe)) (##length _g63888_))))
          (cond ((let () (declare (not safe)) (##fx= _g63887_ 2))
                 (apply (lambda (_key57575_ _lst57576_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key57575_ _lst57576_)))
                        _g63888_))
                ((let () (declare (not safe)) (##fx= _g63887_ 3))
                 (apply (lambda (_key57580_ _lst57581_ _default57582_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key57580_ _lst57581_ _default57582_)))
                        _g63888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g63888_))))))
    (define pgetq__%
      (lambda (_key57491_ _lst57493_ _default57495_)
        (let _lp57498_ ((_rest57501_ _lst57493_))
          (let* ((_rest5750357513_ _rest57501_)
                 (_else5750557521_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57495_))
                        (_default57495_ _key57491_)
                        _default57495_)))
                 (_K5750757530_
                  (lambda (_rest57524_ _v57525_ _k57527_)
                    (if (let () (declare (not safe)) (eq? _k57527_ _key57491_))
                        _v57525_
                        (let ()
                          (declare (not safe))
                          (_lp57498_ _rest57524_))))))
            (if (let () (declare (not safe)) (##pair? _rest5750357513_))
                (let ((_hd5750857533_
                       (let () (declare (not safe)) (##car _rest5750357513_)))
                      (_tl5750957535_
                       (let () (declare (not safe)) (##cdr _rest5750357513_))))
                  (let ((_k57538_ _hd5750857533_))
                    (if (let () (declare (not safe)) (##pair? _tl5750957535_))
                        (let ((_hd5751057540_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5750957535_)))
                              (_tl5751157542_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5750957535_))))
                          (let* ((_v57545_ _hd5751057540_)
                                 (_rest57547_ _tl5751157542_))
                            (declare (not safe))
                            (_K5750757530_ _rest57547_ _v57545_ _k57538_)))
                        (let () (declare (not safe)) (_else5750557521_)))))
                (let () (declare (not safe)) (_else5750557521_)))))))
    (define pgetq__0
      (lambda (_key57552_ _lst57553_)
        (let ((_default57555_ '#f))
          (declare (not safe))
          (pgetq__% _key57552_ _lst57553_ _default57555_))))
    (define pgetq
      (lambda _g63890_
        (let ((_g63889_ (let () (declare (not safe)) (##length _g63890_))))
          (cond ((let () (declare (not safe)) (##fx= _g63889_ 2))
                 (apply (lambda (_key57552_ _lst57553_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key57552_ _lst57553_)))
                        _g63890_))
                ((let () (declare (not safe)) (##fx= _g63889_ 3))
                 (apply (lambda (_key57557_ _lst57558_ _default57559_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key57557_ _lst57558_ _default57559_)))
                        _g63890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g63890_))))))
    (define pgetv__%
      (lambda (_key57420_ _lst57422_ _default57424_)
        (let _lp57427_ ((_rest57430_ _lst57422_))
          (let* ((_rest5743257442_ _rest57430_)
                 (_else5743457450_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57424_))
                        (_default57424_ _key57420_)
                        _default57424_)))
                 (_K5743657459_
                  (lambda (_rest57453_ _v57454_ _k57456_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k57456_ _key57420_))
                        _v57454_
                        (let ()
                          (declare (not safe))
                          (_lp57427_ _rest57453_))))))
            (if (let () (declare (not safe)) (##pair? _rest5743257442_))
                (let ((_hd5743757462_
                       (let () (declare (not safe)) (##car _rest5743257442_)))
                      (_tl5743857464_
                       (let () (declare (not safe)) (##cdr _rest5743257442_))))
                  (let ((_k57467_ _hd5743757462_))
                    (if (let () (declare (not safe)) (##pair? _tl5743857464_))
                        (let ((_hd5743957469_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5743857464_)))
                              (_tl5744057471_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5743857464_))))
                          (let* ((_v57474_ _hd5743957469_)
                                 (_rest57476_ _tl5744057471_))
                            (declare (not safe))
                            (_K5743657459_ _rest57476_ _v57474_ _k57467_)))
                        (let () (declare (not safe)) (_else5743457450_)))))
                (let () (declare (not safe)) (_else5743457450_)))))))
    (define pgetv__0
      (lambda (_key57481_ _lst57482_)
        (let ((_default57484_ '#f))
          (declare (not safe))
          (pgetv__% _key57481_ _lst57482_ _default57484_))))
    (define pgetv
      (lambda _g63892_
        (let ((_g63891_ (let () (declare (not safe)) (##length _g63892_))))
          (cond ((let () (declare (not safe)) (##fx= _g63891_ 2))
                 (apply (lambda (_key57481_ _lst57482_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key57481_ _lst57482_)))
                        _g63892_))
                ((let () (declare (not safe)) (##fx= _g63891_ 3))
                 (apply (lambda (_key57486_ _lst57487_ _default57488_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key57486_ _lst57487_ _default57488_)))
                        _g63892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g63892_))))))
    (define pget__%
      (lambda (_key57349_ _lst57351_ _default57353_)
        (let _lp57356_ ((_rest57359_ _lst57351_))
          (let* ((_rest5736157371_ _rest57359_)
                 (_else5736357379_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57353_))
                        (_default57353_ _key57349_)
                        _default57353_)))
                 (_K5736557388_
                  (lambda (_rest57382_ _v57383_ _k57385_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k57385_ _key57349_))
                        _v57383_
                        (let ()
                          (declare (not safe))
                          (_lp57356_ _rest57382_))))))
            (if (let () (declare (not safe)) (##pair? _rest5736157371_))
                (let ((_hd5736657391_
                       (let () (declare (not safe)) (##car _rest5736157371_)))
                      (_tl5736757393_
                       (let () (declare (not safe)) (##cdr _rest5736157371_))))
                  (let ((_k57396_ _hd5736657391_))
                    (if (let () (declare (not safe)) (##pair? _tl5736757393_))
                        (let ((_hd5736857398_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5736757393_)))
                              (_tl5736957400_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5736757393_))))
                          (let* ((_v57403_ _hd5736857398_)
                                 (_rest57405_ _tl5736957400_))
                            (declare (not safe))
                            (_K5736557388_ _rest57405_ _v57403_ _k57396_)))
                        (let () (declare (not safe)) (_else5736357379_)))))
                (let () (declare (not safe)) (_else5736357379_)))))))
    (define pget__0
      (lambda (_key57410_ _lst57411_)
        (let ((_default57413_ '#f))
          (declare (not safe))
          (pget__% _key57410_ _lst57411_ _default57413_))))
    (define pget
      (lambda _g63894_
        (let ((_g63893_ (let () (declare (not safe)) (##length _g63894_))))
          (cond ((let () (declare (not safe)) (##fx= _g63893_ 2))
                 (apply (lambda (_key57410_ _lst57411_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key57410_ _lst57411_)))
                        _g63894_))
                ((let () (declare (not safe)) (##fx= _g63893_ 3))
                 (apply (lambda (_key57415_ _lst57416_ _default57417_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key57415_ _lst57416_ _default57417_)))
                        _g63894_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g63894_))))))
    (define find
      (lambda (_pred57342_ _lst57343_)
        (let ((_$e57345_
               (let () (declare (not safe)) (memf _pred57342_ _lst57343_))))
          (if _$e57345_ (car _$e57345_) '#f))))
    (define memf
      (lambda (_proc57302_ _lst57303_)
        (let _lp57305_ ((_rest57307_ _lst57303_))
          (let* ((_rest5730857316_ _rest57307_)
                 (_else5731057324_ (lambda () '#f))
                 (_K5731257330_
                  (lambda (_tl57327_ _hd57328_)
                    (if (_proc57302_ _hd57328_)
                        _rest57307_
                        (let () (declare (not safe)) (_lp57305_ _tl57327_))))))
            (if (let () (declare (not safe)) (##pair? _rest5730857316_))
                (let ((_hd5731357333_
                       (let () (declare (not safe)) (##car _rest5730857316_)))
                      (_tl5731457335_
                       (let () (declare (not safe)) (##cdr _rest5730857316_))))
                  (let* ((_hd57338_ _hd5731357333_) (_tl57340_ _tl5731457335_))
                    (declare (not safe))
                    (_K5731257330_ _tl57340_ _hd57338_)))
                (let () (declare (not safe)) (_else5731057324_)))))))
    (define remove1
      (lambda (_el57255_ _lst57257_)
        (let _lp57260_ ((_rest57263_ _lst57257_) (_r57265_ '()))
          (let* ((_rest5726757275_ _rest57263_)
                 (_else5726957283_ (lambda () _lst57257_))
                 (_K5727157290_
                  (lambda (_rest57286_ _hd57287_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el57255_ _hd57287_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57286_ _r57265_))
                        (let ((__tmp63895
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57287_ _r57265_))))
                          (declare (not safe))
                          (_lp57260_ _rest57286_ __tmp63895))))))
            (if (let () (declare (not safe)) (##pair? _rest5726757275_))
                (let ((_hd5727257293_
                       (let () (declare (not safe)) (##car _rest5726757275_)))
                      (_tl5727357295_
                       (let () (declare (not safe)) (##cdr _rest5726757275_))))
                  (let* ((_hd57298_ _hd5727257293_)
                         (_rest57300_ _tl5727357295_))
                    (declare (not safe))
                    (_K5727157290_ _rest57300_ _hd57298_)))
                (let () (declare (not safe)) (_else5726957283_)))))))
    (define remv
      (lambda (_el57208_ _lst57210_)
        (let _lp57213_ ((_rest57216_ _lst57210_) (_r57218_ '()))
          (let* ((_rest5722057228_ _rest57216_)
                 (_else5722257236_ (lambda () _lst57210_))
                 (_K5722457243_
                  (lambda (_rest57239_ _hd57240_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el57208_ _hd57240_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57239_ _r57218_))
                        (let ((__tmp63896
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57240_ _r57218_))))
                          (declare (not safe))
                          (_lp57213_ _rest57239_ __tmp63896))))))
            (if (let () (declare (not safe)) (##pair? _rest5722057228_))
                (let ((_hd5722557246_
                       (let () (declare (not safe)) (##car _rest5722057228_)))
                      (_tl5722657248_
                       (let () (declare (not safe)) (##cdr _rest5722057228_))))
                  (let* ((_hd57251_ _hd5722557246_)
                         (_rest57253_ _tl5722657248_))
                    (declare (not safe))
                    (_K5722457243_ _rest57253_ _hd57251_)))
                (let () (declare (not safe)) (_else5722257236_)))))))
    (define remq
      (lambda (_el57161_ _lst57163_)
        (let _lp57166_ ((_rest57169_ _lst57163_) (_r57171_ '()))
          (let* ((_rest5717357181_ _rest57169_)
                 (_else5717557189_ (lambda () _lst57163_))
                 (_K5717757196_
                  (lambda (_rest57192_ _hd57193_)
                    (if (let () (declare (not safe)) (eq? _el57161_ _hd57193_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57192_ _r57171_))
                        (let ((__tmp63897
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57193_ _r57171_))))
                          (declare (not safe))
                          (_lp57166_ _rest57192_ __tmp63897))))))
            (if (let () (declare (not safe)) (##pair? _rest5717357181_))
                (let ((_hd5717857199_
                       (let () (declare (not safe)) (##car _rest5717357181_)))
                      (_tl5717957201_
                       (let () (declare (not safe)) (##cdr _rest5717357181_))))
                  (let* ((_hd57204_ _hd5717857199_)
                         (_rest57206_ _tl5717957201_))
                    (declare (not safe))
                    (_K5717757196_ _rest57206_ _hd57204_)))
                (let () (declare (not safe)) (_else5717557189_)))))))
    (define remf
      (lambda (_proc57120_ _lst57121_)
        (let _lp57123_ ((_rest57125_ _lst57121_) (_r57126_ '()))
          (let* ((_rest5712757135_ _rest57125_)
                 (_else5712957143_ (lambda () _lst57121_))
                 (_K5713157149_
                  (lambda (_rest57146_ _hd57147_)
                    (if (_proc57120_ _hd57147_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57146_ _r57126_))
                        (let ((__tmp63898
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57147_ _r57126_))))
                          (declare (not safe))
                          (_lp57123_ _rest57146_ __tmp63898))))))
            (if (let () (declare (not safe)) (##pair? _rest5712757135_))
                (let ((_hd5713257152_
                       (let () (declare (not safe)) (##car _rest5712757135_)))
                      (_tl5713357154_
                       (let () (declare (not safe)) (##cdr _rest5712757135_))))
                  (let* ((_hd57157_ _hd5713257152_)
                         (_rest57159_ _tl5713357154_))
                    (declare (not safe))
                    (_K5713157149_ _rest57159_ _hd57157_)))
                (let () (declare (not safe)) (_else5712957143_)))))))
    (define 1+ (lambda (_x57118_) (+ _x57118_ '1)))
    (define 1- (lambda (_x57116_) (- _x57116_ '1)))
    (define fx1+ (lambda (_x57114_) (fx+ _x57114_ '1)))
    (define fx1- (lambda (_x57112_) (fx- _x57112_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x57110_)
        (if (fixnum? _x57110_)
            (let () (declare (not safe)) (##fx>= _x57110_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x57108_)
        (if (fixnum? _x57108_)
            (let () (declare (not safe)) (##fx> _x57108_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x57106_) (let () (declare (not safe)) (eq? _x57106_ '0))))
    (define fx<0?
      (lambda (_x57104_)
        (if (fixnum? _x57104_)
            (let () (declare (not safe)) (##fx< _x57104_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x57102_)
        (if (fixnum? _x57102_)
            (let () (declare (not safe)) (##fx<= _x57102_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x57100_)
        (if (let () (declare (not safe)) (symbol? _x57100_))
            (let ((__tmp63899 (uninterned-symbol? _x57100_)))
              (declare (not safe))
              (not __tmp63899))
            '#f)))
    (define display-as-string
      (lambda (_x57072_ _port57073_)
        (if (or (let () (declare (not safe)) (string? _x57072_))
                (let () (declare (not safe)) (symbol? _x57072_))
                (keyword? _x57072_)
                (let () (declare (not safe)) (number? _x57072_))
                (let () (declare (not safe)) (char? _x57072_)))
            (display _x57072_ _port57073_)
            (if (let () (declare (not safe)) (pair? _x57072_))
                (begin
                  (let ((__tmp63900 (car _x57072_)))
                    (declare (not safe))
                    (display-as-string __tmp63900 _port57073_))
                  (let ((__tmp63901 (cdr _x57072_)))
                    (declare (not safe))
                    (display-as-string __tmp63901 _port57073_)))
                (if (let () (declare (not safe)) (vector? _x57072_))
                    (vector-for-each
                     (lambda (_g5708657088_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5708657088_ _port57073_)))
                     _x57072_)
                    (if (or (let () (declare (not safe)) (null? _x57072_))
                            (let ()
                              (declare (not safe))
                              (eq? _x57072_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x57072_))
                            (let () (declare (not safe)) (boolean? _x57072_)))
                        '#!void
                        (error '"cannot convert as string" _x57072_)))))))
    (define as-string__0
      (lambda (_x57060_)
        (if (let () (declare (not safe)) (string? _x57060_))
            _x57060_
            (if (let () (declare (not safe)) (symbol? _x57060_))
                (symbol->string _x57060_)
                (if (keyword? _x57060_)
                    (keyword->string _x57060_)
                    (call-with-output-string
                     '()
                     (lambda (_g5706157063_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x57060_ _g5706157063_)))))))))
    (define as-string__1
      (lambda _args57066_
        (call-with-output-string
         '()
         (lambda (_g5706757069_)
           (let ()
             (declare (not safe))
             (display-as-string _args57066_ _g5706757069_))))))
    (define as-string
      (lambda _g63903_
        (let ((_g63902_ (let () (declare (not safe)) (##length _g63903_))))
          (cond ((let () (declare (not safe)) (##fx= _g63902_ 1))
                 (apply (lambda (_x57060_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x57060_)))
                        _g63903_))
                (#t (apply as-string__1 _g63903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g63903_))))))
    (define make-symbol__0
      (lambda (_x57056_)
        (if (interned-symbol? _x57056_)
            _x57056_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x57056_))))))
    (define make-symbol__1
      (lambda _args57058_ (string->symbol (apply as-string _args57058_))))
    (define make-symbol
      (lambda _g63905_
        (let ((_g63904_ (let () (declare (not safe)) (##length _g63905_))))
          (cond ((let () (declare (not safe)) (##fx= _g63904_ 1))
                 (apply (lambda (_x57056_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x57056_)))
                        _g63905_))
                (#t (apply make-symbol__1 _g63905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g63905_))))))
    (define make-keyword__0
      (lambda (_x57052_)
        (if (interned-keyword? _x57052_)
            _x57052_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x57052_))))))
    (define make-keyword__1
      (lambda _args57054_ (string->keyword (apply as-string _args57054_))))
    (define make-keyword
      (lambda _g63907_
        (let ((_g63906_ (let () (declare (not safe)) (##length _g63907_))))
          (cond ((let () (declare (not safe)) (##fx= _g63906_ 1))
                 (apply (lambda (_x57052_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x57052_)))
                        _g63907_))
                (#t (apply make-keyword__1 _g63907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g63907_))))))
    (define interned-keyword?
      (lambda (_x57050_)
        (if (keyword? _x57050_)
            (let ((__tmp63908 (uninterned-keyword? _x57050_)))
              (declare (not safe))
              (not __tmp63908))
            '#f)))
    (define symbol->keyword
      (lambda (_sym57048_)
        ((if (uninterned-symbol? _sym57048_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym57048_))))
    (define keyword->symbol
      (lambda (_kw57046_)
        ((if (uninterned-keyword? _kw57046_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw57046_))))
    (define bytes->string__%
      (lambda (_bstr57024_ _enc57025_)
        (if (let () (declare (not safe)) (eq? _enc57025_ 'UTF-8))
            (utf8->string _bstr57024_)
            (let* ((_in57027_
                    (open-input-u8vector
                     (let ((__tmp63909
                            (let ((__tmp63910
                                   (let ((__tmp63911
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr57024_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp63911))))
                              (declare (not safe))
                              (cons _enc57025_ __tmp63910))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp63909))))
                   (_len57029_ (u8vector-length _bstr57024_))
                   (_out57031_ (make-string _len57029_))
                   (_n57033_
                    (read-substring _out57031_ '0 _len57029_ _in57027_)))
              (string-shrink! _out57031_ _n57033_)
              _out57031_))))
    (define bytes->string__0
      (lambda (_bstr57039_)
        (let ((_enc57041_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr57039_ _enc57041_))))
    (define bytes->string
      (lambda _g63913_
        (let ((_g63912_ (let () (declare (not safe)) (##length _g63913_))))
          (cond ((let () (declare (not safe)) (##fx= _g63912_ 1))
                 (apply (lambda (_bstr57039_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr57039_)))
                        _g63913_))
                ((let () (declare (not safe)) (##fx= _g63912_ 2))
                 (apply (lambda (_bstr57043_ _enc57044_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr57043_ _enc57044_)))
                        _g63913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g63913_))))))
    (define string->bytes__%
      (lambda (_str57010_ _enc57011_)
        (if (let () (declare (not safe)) (eq? _enc57011_ 'UTF-8))
            (string->utf8 _str57010_)
            (substring->bytes
             _str57010_
             '0
             (string-length _str57010_)
             _enc57011_))))
    (define string->bytes__0
      (lambda (_str57016_)
        (let ((_enc57018_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str57016_ _enc57018_))))
    (define string->bytes
      (lambda _g63915_
        (let ((_g63914_ (let () (declare (not safe)) (##length _g63915_))))
          (cond ((let () (declare (not safe)) (##fx= _g63914_ 1))
                 (apply (lambda (_str57016_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str57016_)))
                        _g63915_))
                ((let () (declare (not safe)) (##fx= _g63914_ 2))
                 (apply (lambda (_str57020_ _enc57021_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str57020_ _enc57021_)))
                        _g63915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g63915_))))))
    (define substring->bytes__%
      (lambda (_str56988_ _start56989_ _end56990_ _enc56991_)
        (if (let () (declare (not safe)) (eq? _enc56991_ 'UTF-8))
            (string->utf8 _str56988_ _start56989_ _end56990_)
            (let ((_out56993_
                   (open-output-u8vector
                    (let ((__tmp63916
                           (let ()
                             (declare (not safe))
                             (cons _enc56991_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp63916)))))
              (write-substring _str56988_ _start56989_ _end56990_ _out56993_)
              (get-output-u8vector _out56993_)))))
    (define substring->bytes__0
      (lambda (_str56998_ _start56999_ _end57000_)
        (let ((_enc57002_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str56998_
           _start56999_
           _end57000_
           _enc57002_))))
    (define substring->bytes
      (lambda _g63918_
        (let ((_g63917_ (let () (declare (not safe)) (##length _g63918_))))
          (cond ((let () (declare (not safe)) (##fx= _g63917_ 3))
                 (apply (lambda (_str56998_ _start56999_ _end57000_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str56998_
                             _start56999_
                             _end57000_)))
                        _g63918_))
                ((let () (declare (not safe)) (##fx= _g63917_ 4))
                 (apply (lambda (_str57004_ _start57005_ _end57006_ _enc57007_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str57004_
                             _start57005_
                             _end57006_
                             _enc57007_)))
                        _g63918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g63918_))))))
    (define string-empty?
      (lambda (_str56985_)
        (let ((__tmp63919 (string-length _str56985_)))
          (declare (not safe))
          (##fxzero? __tmp63919))))
    (define string-prefix?
      (lambda (_prefix56975_ _str56976_)
        (let ((_str-len56978_ (string-length _str56976_))
              (_prefix-len56979_ (string-length _prefix56975_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len56979_ _str-len56978_))
              (let _lp56981_ ((_i56983_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i56983_ _prefix-len56979_))
                    (if (let ((__tmp63922
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str56976_ _i56983_)))
                              (__tmp63921
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix56975_ _i56983_))))
                          (declare (not safe))
                          (eq? __tmp63922 __tmp63921))
                        (let ((__tmp63920
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i56983_ '1))))
                          (declare (not safe))
                          (_lp56981_ __tmp63920))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str56953_ _char56954_ _start56955_)
        (let ((_len56957_ (string-length _str56953_)))
          (let _lp56959_ ((_k56961_ _start56955_))
            (if (let () (declare (not safe)) (##fx< _k56961_ _len56957_))
                (if (let ((__tmp63924
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56953_ _k56961_))))
                      (declare (not safe))
                      (eq? _char56954_ __tmp63924))
                    _k56961_
                    (let ((__tmp63923
                           (let () (declare (not safe)) (##fx+ _k56961_ '1))))
                      (declare (not safe))
                      (_lp56959_ __tmp63923)))
                '#f)))))
    (define string-index__0
      (lambda (_str56966_ _char56967_)
        (let ((_start56969_ '0))
          (declare (not safe))
          (string-index__% _str56966_ _char56967_ _start56969_))))
    (define string-index
      (lambda _g63926_
        (let ((_g63925_ (let () (declare (not safe)) (##length _g63926_))))
          (cond ((let () (declare (not safe)) (##fx= _g63925_ 2))
                 (apply (lambda (_str56966_ _char56967_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str56966_ _char56967_)))
                        _g63926_))
                ((let () (declare (not safe)) (##fx= _g63925_ 3))
                 (apply (lambda (_str56971_ _char56972_ _start56973_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str56971_
                             _char56972_
                             _start56973_)))
                        _g63926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g63926_))))))
    (define string-rindex__%
      (lambda (_str56924_ _char56925_ _start56926_)
        (let* ((_len56928_ (string-length _str56924_))
               (_start56933_
                (let ((_$e56930_ _start56926_))
                  (if _$e56930_
                      _$e56930_
                      (let () (declare (not safe)) (##fx- _len56928_ '1))))))
          (let _lp56936_ ((_k56938_ _start56933_))
            (if (let () (declare (not safe)) (##fx>= _k56938_ '0))
                (if (let ((__tmp63928
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56924_ _k56938_))))
                      (declare (not safe))
                      (eq? _char56925_ __tmp63928))
                    _k56938_
                    (let ((__tmp63927
                           (let () (declare (not safe)) (##fx- _k56938_ '1))))
                      (declare (not safe))
                      (_lp56936_ __tmp63927)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str56943_ _char56944_)
        (let ((_start56946_ '#f))
          (declare (not safe))
          (string-rindex__% _str56943_ _char56944_ _start56946_))))
    (define string-rindex
      (lambda _g63930_
        (let ((_g63929_ (let () (declare (not safe)) (##length _g63930_))))
          (cond ((let () (declare (not safe)) (##fx= _g63929_ 2))
                 (apply (lambda (_str56943_ _char56944_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str56943_ _char56944_)))
                        _g63930_))
                ((let () (declare (not safe)) (##fx= _g63929_ 3))
                 (apply (lambda (_str56948_ _char56949_ _start56950_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str56948_
                             _char56949_
                             _start56950_)))
                        _g63930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g63930_))))))
    (define string-split
      (lambda (_str56908_ _char56909_)
        (let ((_len56911_ (string-length _str56908_)))
          (let _lp56913_ ((_start56915_ '0) (_r56916_ '()))
            (let ((_$e56918_
                   (let ()
                     (declare (not safe))
                     (string-index _str56908_ _char56909_ _start56915_))))
              (if _$e56918_
                  ((lambda (_end56921_)
                     (let ((__tmp63934
                            (let ()
                              (declare (not safe))
                              (##fx+ _end56921_ '1)))
                           (__tmp63932
                            (let ((__tmp63933
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56908_
                                      _start56915_
                                      _end56921_))))
                              (declare (not safe))
                              (cons __tmp63933 _r56916_))))
                       (declare (not safe))
                       (_lp56913_ __tmp63934 __tmp63932)))
                   _$e56918_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start56915_ _len56911_))
                      (let ((__tmp63931
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56908_
                                      _start56915_
                                      _len56911_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp63931 _r56916_))
                      (reverse _r56916_))))))))
    (define string-join
      (lambda (_strs56813_ _join56814_)
        (letrec ((_join-length56816_
                  (lambda (_strs56867_ _jlen56868_)
                    (let _lp56870_ ((_rest56872_ _strs56867_) (_len56873_ '0))
                      (let* ((_rest5687456882_ _rest56872_)
                             (_else5687656890_ (lambda () '0))
                             (_K5687856896_
                              (lambda (_rest56893_ _hd56894_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd56894_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest56893_))
                                        (let ((__tmp63936
                                               (let ((__tmp63937
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd56894_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp63937
                                                        _jlen56868_
                                                        _len56873_))))
                                          (declare (not safe))
                                          (_lp56870_ _rest56893_ __tmp63936))
                                        (let ((__tmp63935
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd56894_))))
                                          (declare (not safe))
                                          (##fx+ __tmp63935 _len56873_)))
                                    (error '"expected string" _hd56894_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5687456882_))
                            (let ((_hd5687956899_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5687456882_)))
                                  (_tl5688056901_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5687456882_))))
                              (let* ((_hd56904_ _hd5687956899_)
                                     (_rest56906_ _tl5688056901_))
                                (declare (not safe))
                                (_K5687856896_ _rest56906_ _hd56904_)))
                            (let ()
                              (declare (not safe))
                              (_else5687656890_))))))))
          (let* ((_join56818_
                  (if (let () (declare (not safe)) (char? _join56814_))
                      (string _join56814_)
                      (if (let () (declare (not safe)) (string? _join56814_))
                          _join56814_
                          (error '"expected string or char" _join56814_))))
                 (_jlen56820_
                  (let () (declare (not safe)) (##string-length _join56818_)))
                 (_olen56822_
                  (let ()
                    (declare (not safe))
                    (_join-length56816_ _strs56813_ _jlen56820_)))
                 (_ostr56824_ (make-string _olen56822_)))
            (let _lp56827_ ((_rest56829_ _strs56813_) (_k56830_ '0))
              (let* ((_rest5683156839_ _rest56829_)
                     (_else5683356847_ (lambda () '""))
                     (_K5683556855_
                      (lambda (_rest56850_ _hd56851_)
                        (let ((_hdlen56853_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd56851_))))
                          (if (let () (declare (not safe)) (pair? _rest56850_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56851_
                                   '0
                                   _hdlen56853_
                                   _ostr56824_
                                   _k56830_))
                                (let ((__tmp63938
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56830_ _hdlen56853_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join56818_
                                   '0
                                   _jlen56820_
                                   _ostr56824_
                                   __tmp63938))
                                (let ((__tmp63939
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56830_
                                                _hdlen56853_
                                                _jlen56820_))))
                                  (declare (not safe))
                                  (_lp56827_ _rest56850_ __tmp63939)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56851_
                                   '0
                                   _hdlen56853_
                                   _ostr56824_
                                   _k56830_))
                                _ostr56824_))))))
                (if (let () (declare (not safe)) (##pair? _rest5683156839_))
                    (let ((_hd5683656858_
                           (let ()
                             (declare (not safe))
                             (##car _rest5683156839_)))
                          (_tl5683756860_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5683156839_))))
                      (let* ((_hd56863_ _hd5683656858_)
                             (_rest56865_ _tl5683756860_))
                        (declare (not safe))
                        (_K5683556855_ _rest56865_ _hd56863_)))
                    (let () (declare (not safe)) (_else5683356847_)))))))))
    (define read-u8vector
      (lambda (_bytes56810_ _port56811_)
        (read-subu8vector
         _bytes56810_
         '0
         (u8vector-length _bytes56810_)
         _port56811_)))
    (define write-u8vector
      (lambda (_bytes56807_ _port56808_)
        (write-subu8vector
         _bytes56807_
         '0
         (u8vector-length _bytes56807_)
         _port56808_)))
    (define read-string
      (lambda (_str56804_ _port56805_)
        (read-substring _str56804_ '0 (string-length _str56804_) _port56805_)))
    (define write-string
      (lambda (_str56801_ _port56802_)
        (write-substring
         _str56801_
         '0
         (string-length _str56801_)
         _port56802_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag56770_
               _dbg-exprs56771_
               _dbg-thunks56772_
               _expr56773_
               _thunk56774_)
        (letrec ((_o56776_ (current-output-port))
                 (_e56777_ (current-error-port))
                 (_p56778_ (DBG-printer))
                 (_f56779_
                  (lambda () (force-output _o56776_) (force-output _e56777_)))
                 (_d56780_ (lambda (_x56787_) (display _x56787_ _e56777_)))
                 (_w56781_ (lambda (_x56789_) (_p56778_ _x56789_ _e56777_)))
                 (_n56782_ (lambda () (newline _e56777_)))
                 (_v56783_
                  (lambda (_l56792_)
                    (for-each
                     (lambda (_x56794_)
                       (let () (declare (not safe)) (_d56780_ '" "))
                       (let () (declare (not safe)) (_w56781_ _x56794_)))
                     _l56792_)
                    (let () (declare (not safe)) (_n56782_))))
                 (_x56784_
                  (lambda (_expr56796_ _thunk56797_)
                    (let () (declare (not safe)) (_f56779_))
                    (let () (declare (not safe)) (_d56780_ '"  "))
                    (let () (declare (not safe)) (_w56781_ _expr56796_))
                    (let () (declare (not safe)) (_d56780_ '" =>"))
                    (call-with-values
                     _thunk56797_
                     (lambda _x56799_
                       (let () (declare (not safe)) (_v56783_ _x56799_))
                       (let () (declare (not safe)) (_f56779_))
                       (apply values _x56799_))))))
          (if _tag56770_
              (begin
                (if (let () (declare (not safe)) (eq? _tag56770_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f56779_))
                      (let () (declare (not safe)) (_d56780_ _tag56770_))
                      (let () (declare (not safe)) (_n56782_))))
                (for-each _x56784_ _dbg-exprs56771_ _dbg-thunks56772_)
                (if _thunk56774_
                    (let ()
                      (declare (not safe))
                      (_x56784_ _expr56773_ _thunk56774_))
                    '#!void))
              (if _thunk56774_ (_thunk56774_) '#!void)))))))
