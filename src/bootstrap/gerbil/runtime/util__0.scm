(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1704735466)
  (begin
    (define displayln
      (lambda _args7639_
        (let _lp7641_ ((_rest7643_ _args7639_))
          (let* ((_rest76447652_ _rest7643_)
                 (_else76467660_ (lambda () (newline)))
                 (_K76487666_
                  (lambda (_rest7663_ _hd7664_)
                    (display _hd7664_)
                    (let () (declare (not safe)) (_lp7641_ _rest7663_)))))
            (if (let () (declare (not safe)) (##pair? _rest76447652_))
                (let ((_hd76497669_
                       (let () (declare (not safe)) (##car _rest76447652_)))
                      (_tl76507671_
                       (let () (declare (not safe)) (##cdr _rest76447652_))))
                  (let* ((_hd7674_ _hd76497669_) (_rest7676_ _tl76507671_))
                    (declare (not safe))
                    (_K76487666_ _rest7676_ _hd7674_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args7637_ (for-each display _args7637_)))
    (define file-newer?
      (lambda (_file17630_ _file27631_)
        (letrec ((_modification-time7633_
                  (lambda (_file7635_)
                    (let ((__tmp8042
                           (file-info-last-modification-time
                            (file-info _file7635_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp8042)))))
          (let ((__tmp8044
                 (let ()
                   (declare (not safe))
                   (_modification-time7633_ _file17630_)))
                (__tmp8043
                 (let ()
                   (declare (not safe))
                   (_modification-time7633_ _file27631_))))
            (declare (not safe))
            (##fl> __tmp8044 __tmp8043)))))
    (define create-directory*__%
      (lambda (_dir7604_ _perms7605_)
        (letrec ((_create17607_
                  (lambda (_path7618_)
                    (if (file-exists? _path7618_)
                        (if (let ((__tmp8045 (file-type _path7618_)))
                              (declare (not safe))
                              (eq? __tmp8045 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path7618_))
                        (if _perms7605_
                            (create-directory
                             (list 'path:
                                   _path7618_
                                   'permissions:
                                   _perms7605_))
                            (create-directory _path7618_))))))
          (if (file-exists? _dir7604_)
              '#!void
              (let _lp7609_ ((_start7611_ '0))
                (let ((_$e7613_
                       (let ()
                         (declare (not safe))
                         (string-index _dir7604_ '#\/ _start7611_))))
                  (if _$e7613_
                      ((lambda (_x7616_)
                         (if (let () (declare (not safe)) (##fx> _x7616_ '0))
                             (let ((__tmp8046
                                    (substring _dir7604_ '0 _x7616_)))
                               (declare (not safe))
                               (_create17607_ __tmp8046))
                             '#!void)
                         (let ((__tmp8047
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x7616_ '1))))
                           (declare (not safe))
                           (_lp7609_ __tmp8047)))
                       _$e7613_)
                      (let ()
                        (declare (not safe))
                        (_create17607_ _dir7604_)))))))))
    (define create-directory*__0
      (lambda (_dir7623_)
        (let ((_perms7625_ '493))
          (declare (not safe))
          (create-directory*__% _dir7623_ _perms7625_))))
    (define create-directory*
      (lambda _g8049_
        (let ((_g8048_ (let () (declare (not safe)) (##length _g8049_))))
          (cond ((let () (declare (not safe)) (##fx= _g8048_ 1))
                 (apply (lambda (_dir7623_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir7623_)))
                        _g8049_))
                ((let () (declare (not safe)) (##fx= _g8048_ 2))
                 (apply (lambda (_dir7627_ _perms7628_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir7627_ _perms7628_)))
                        _g8049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g8049_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g8050_ '#t))
    (define true?
      (lambda (_obj7600_) (let () (declare (not safe)) (eq? _obj7600_ '#t))))
    (define false (lambda _g8051_ '#f))
    (define void (lambda _g8052_ '#!void))
    (define void?
      (lambda (_obj7596_)
        (let () (declare (not safe)) (eq? _obj7596_ '#!void))))
    (define eof-object (lambda _g8053_ '#!eof))
    (define identity (lambda (_obj7593_) _obj7593_))
    (define dssl-object?
      (lambda (_obj7591_)
        (if (memq _obj7591_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj7589_)
        (let () (declare (not safe)) (eq? _obj7589_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj7587_)
        (let () (declare (not safe)) (eq? _obj7587_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj7585_)
        (let () (declare (not safe)) (eq? _obj7585_ '#!optional))))
    (define immediate?
      (lambda (_obj7581_)
        (let* ((_t7583_ (let () (declare (not safe)) (##type _obj7581_)))
               (__tmp8054 (let () (declare (not safe)) (##fxand _t7583_ '1))))
          (declare (not safe))
          (##fxzero? __tmp8054))))
    (define nonnegative-fixnum?
      (lambda (_obj7579_)
        (if (fixnum? _obj7579_)
            (let ((__tmp8055 (fxnegative? _obj7579_)))
              (declare (not safe))
              (not __tmp8055))
            '#f)))
    (define values-count
      (lambda (_obj7577_)
        (if (let () (declare (not safe)) (##values? _obj7577_))
            (let () (declare (not safe)) (##vector-length _obj7577_))
            '1)))
    (define values-ref
      (lambda (_obj7574_ _k7575_)
        (if (let () (declare (not safe)) (##values? _obj7574_))
            (let () (declare (not safe)) (##vector-ref _obj7574_ _k7575_))
            _obj7574_)))
    (define values->list
      (lambda (_obj7572_)
        (if (let () (declare (not safe)) (##values? _obj7572_))
            (let () (declare (not safe)) (##vector->list _obj7572_))
            (list _obj7572_))))
    (define subvector->list__%
      (lambda (_obj7557_ _start7558_)
        (let ((_lst7560_
               (let () (declare (not safe)) (##vector->list _obj7557_))))
          (list-tail _lst7560_ _start7558_))))
    (define subvector->list__0
      (lambda (_obj7565_)
        (let ((_start7567_ '0))
          (declare (not safe))
          (subvector->list__% _obj7565_ _start7567_))))
    (define subvector->list
      (lambda _g8057_
        (let ((_g8056_ (let () (declare (not safe)) (##length _g8057_))))
          (cond ((let () (declare (not safe)) (##fx= _g8056_ 1))
                 (apply (lambda (_obj7565_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj7565_)))
                        _g8057_))
                ((let () (declare (not safe)) (##fx= _g8056_ 2))
                 (apply (lambda (_obj7569_ _start7570_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj7569_ _start7570_)))
                        _g8057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g8057_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args7554_ (apply make-table 'test: eq? _args7554_)))
    (define make-hash-table-eqv
      (lambda _args7552_ (apply make-table 'test: eqv? _args7552_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst7549_ . _args7550_)
        (apply list->table _lst7549_ 'test: eq? _args7550_)))
    (define list->hash-table-eqv
      (lambda (_lst7546_ . _args7547_)
        (apply list->table _lst7546_ 'test: eqv? _args7547_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht7543_ _k7544_) (table-ref _ht7543_ _k7544_ '#f)))
    (define hash-put!
      (lambda (_ht7539_ _k7540_ _v7541_)
        (table-set! _ht7539_ _k7540_ _v7541_)))
    (define hash-update!__%
      (lambda (_ht7518_ _k7519_ _update7520_ _default7521_)
        (let* ((_value7523_
                (let ()
                  (declare (not safe))
                  (table-ref _ht7518_ _k7519_ _default7521_)))
               (__tmp8058 (_update7520_ _value7523_)))
          (declare (not safe))
          (table-set! _ht7518_ _k7519_ __tmp8058))))
    (define hash-update!__0
      (lambda (_ht7528_ _k7529_ _update7530_)
        (let ((_default7532_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht7528_ _k7529_ _update7530_ _default7532_))))
    (define hash-update!
      (lambda _g8060_
        (let ((_g8059_ (let () (declare (not safe)) (##length _g8060_))))
          (cond ((let () (declare (not safe)) (##fx= _g8059_ 3))
                 (apply (lambda (_ht7528_ _k7529_ _update7530_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0 _ht7528_ _k7529_ _update7530_)))
                        _g8060_))
                ((let () (declare (not safe)) (##fx= _g8059_ 4))
                 (apply (lambda (_ht7534_ _k7535_ _update7536_ _default7537_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht7534_
                             _k7535_
                             _update7536_
                             _default7537_)))
                        _g8060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g8060_))))))
    (define hash-remove!
      (lambda (_ht7514_ _k7515_) (table-set! _ht7514_ _k7515_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht7512_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht7512_))))
    (define plist->hash-table__%
      (lambda (_plst7447_ _ht7448_)
        (let _lp7450_ ((_rest7452_ _plst7447_))
          (let* ((_rest74537464_ _rest7452_)
                 (_E74567468_
                  (lambda () (error '"No clause matching" _rest74537464_))))
            (let ((_K74587483_
                   (lambda (_rest7479_ _v7480_ _k7481_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht7448_ _k7481_ _v7480_))
                     (let () (declare (not safe)) (_lp7450_ _rest7479_))))
                  (_K74577473_ (lambda () _ht7448_)))
              (let ((_try-match74557476_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest74537464_ '()))
                           (let () (declare (not safe)) (_K74577473_))
                           (let () (declare (not safe)) (_E74567468_))))))
                (if (let () (declare (not safe)) (##pair? _rest74537464_))
                    (let ((_tl74607488_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest74537464_)))
                          (_hd74597486_
                           (let ()
                             (declare (not safe))
                             (##car _rest74537464_))))
                      (if (let () (declare (not safe)) (##pair? _tl74607488_))
                          (let ((_tl74627495_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl74607488_)))
                                (_hd74617493_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl74607488_))))
                            (let ((_k7491_ _hd74597486_)
                                  (_v7498_ _hd74617493_)
                                  (_rest7500_ _tl74627495_))
                              (let ()
                                (declare (not safe))
                                (_K74587483_ _rest7500_ _v7498_ _k7491_))))
                          (let () (declare (not safe)) (_try-match74557476_))))
                    (let () (declare (not safe)) (_try-match74557476_)))))))))
    (define plist->hash-table__0
      (lambda (_plst7505_)
        (let ((_ht7507_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst7505_ _ht7507_))))
    (define plist->hash-table
      (lambda _g8062_
        (let ((_g8061_ (let () (declare (not safe)) (##length _g8062_))))
          (cond ((let () (declare (not safe)) (##fx= _g8061_ 1))
                 (apply (lambda (_plst7505_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst7505_)))
                        _g8062_))
                ((let () (declare (not safe)) (##fx= _g8061_ 2))
                 (apply (lambda (_plst7509_ _ht7510_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst7509_ _ht7510_)))
                        _g8062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g8062_))))))
    (define plist->hash-table-eq
      (lambda (_plst7444_)
        (let ((__tmp8063
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst7444_ __tmp8063))))
    (define plist->hash-table-eqv
      (lambda (_plst7442_)
        (let ((__tmp8064
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst7442_ __tmp8064))))
    (define hash-key?
      (lambda (_ht7439_ _k7440_)
        (let ((__tmp8065
               (let ((__tmp8066
                      (let ()
                        (declare (not safe))
                        (table-ref _ht7439_ _k7440_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp8066 absent-value))))
          (declare (not safe))
          (not __tmp8065))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun7432_ _ht7433_)
        (let ((__tmp8067
               (lambda (_k7435_ _v7436_ _r7437_)
                 (let ((__tmp8068 (_fun7432_ _k7435_ _v7436_)))
                   (declare (not safe))
                   (cons __tmp8068 _r7437_)))))
          (declare (not safe))
          (hash-fold __tmp8067 '() _ht7433_))))
    (define hash-fold
      (lambda (_fun7423_ _iv7424_ _ht7425_)
        (let ((_ret7427_ _iv7424_))
          (let ((__tmp8069
                 (lambda (_k7429_ _v7430_)
                   (set! _ret7427_ (_fun7423_ _k7429_ _v7430_ _ret7427_)))))
            (declare (not safe))
            (table-for-each __tmp8069 _ht7425_))
          _ret7427_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht7418_)
        (let ((__tmp8070 (lambda (_k7420_ _v7421_) _k7420_)))
          (declare (not safe))
          (hash-map __tmp8070 _ht7418_))))
    (define hash-values
      (lambda (_ht7413_)
        (let ((__tmp8071 (lambda (_k7415_ _v7416_) _v7416_)))
          (declare (not safe))
          (hash-map __tmp8071 _ht7413_))))
    (define hash-copy
      (lambda (_hd7408_ . _rest7409_)
        (let ((_hd7411_ (table-copy _hd7408_)))
          (if (let () (declare (not safe)) (null? _rest7409_))
              _hd7411_
              (apply hash-copy! _hd7411_ _rest7409_)))))
    (define hash-copy!
      (lambda (_hd7403_ . _rest7404_)
        (for-each
         (lambda (_r7406_) (table-merge! _hd7403_ _r7406_))
         _rest7404_)
        _hd7403_))
    (define hash-merge
      (lambda (_hd7397_ . _rest7398_)
        (let ((__tmp8072
               (lambda (_tab7400_ _r7401_) (table-merge _r7401_ _tab7400_))))
          (declare (not safe))
          (foldl1 __tmp8072 _hd7397_ _rest7398_))))
    (define hash-merge!
      (lambda (_hd7391_ . _rest7392_)
        (let ((__tmp8073
               (lambda (_tab7394_ _r7395_) (table-merge! _r7395_ _tab7394_))))
          (declare (not safe))
          (foldl1 __tmp8073 _hd7391_ _rest7392_))))
    (define hash-clear!__%
      (lambda (_ht7376_ _size7377_)
        (let ((_gcht7379_
               (let () (declare (not safe)) (##vector-ref _ht7376_ '5))))
          (if (let ((__tmp8074 (fixnum? _gcht7379_)))
                (declare (not safe))
                (not __tmp8074))
              (let ()
                (declare (not safe))
                (##vector-set! _ht7376_ '5 _size7377_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht7384_)
        (let ((_size7386_ '0))
          (declare (not safe))
          (hash-clear!__% _ht7384_ _size7386_))))
    (define hash-clear!
      (lambda _g8076_
        (let ((_g8075_ (let () (declare (not safe)) (##length _g8076_))))
          (cond ((let () (declare (not safe)) (##fx= _g8075_ 1))
                 (apply (lambda (_ht7384_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht7384_)))
                        _g8076_))
                ((let () (declare (not safe)) (##fx= _g8075_ 2))
                 (apply (lambda (_ht7388_ _size7389_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht7388_ _size7389_)))
                        _g8076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g8076_))))))
    (define make-list__%
      (lambda (_k7357_ _val7358_)
        (if (fixnum? _k7357_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k7357_))
        (let _lp7360_ ((_n7362_ '0) (_r7363_ '()))
          (if (let () (declare (not safe)) (##fx< _n7362_ _k7357_))
              (let ((__tmp8078
                     (let () (declare (not safe)) (##fx+ _n7362_ '1)))
                    (__tmp8077
                     (let () (declare (not safe)) (cons _val7358_ _r7363_))))
                (declare (not safe))
                (_lp7360_ __tmp8078 __tmp8077))
              _r7363_))))
    (define make-list__0
      (lambda (_k7368_)
        (let ((_val7370_ '#f))
          (declare (not safe))
          (make-list__% _k7368_ _val7370_))))
    (define make-list
      (lambda _g8080_
        (let ((_g8079_ (let () (declare (not safe)) (##length _g8080_))))
          (cond ((let () (declare (not safe)) (##fx= _g8079_ 1))
                 (apply (lambda (_k7368_)
                          (let () (declare (not safe)) (make-list__0 _k7368_)))
                        _g8080_))
                ((let () (declare (not safe)) (##fx= _g8079_ 2))
                 (apply (lambda (_k7372_ _val7373_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k7372_ _val7373_)))
                        _g8080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g8080_))))))
    (define cons*
      (lambda (_x7347_ _y7348_ . _rest7349_)
        (letrec ((_recur7351_
                  (lambda (_x7353_ _rest7354_)
                    (if (let () (declare (not safe)) (pair? _rest7354_))
                        (let ((__tmp8081
                               (let ((__tmp8083
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest7354_)))
                                     (__tmp8082
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest7354_))))
                                 (declare (not safe))
                                 (_recur7351_ __tmp8083 __tmp8082))))
                          (declare (not safe))
                          (cons _x7353_ __tmp8081))
                        _x7353_))))
          (let ((__tmp8084
                 (let ()
                   (declare (not safe))
                   (_recur7351_ _y7348_ _rest7349_))))
            (declare (not safe))
            (cons _x7347_ __tmp8084)))))
    (define foldl1
      (lambda (_f7305_ _iv7306_ _lst7307_)
        (let _lp7309_ ((_rest7311_ _lst7307_) (_r7312_ _iv7306_))
          (let* ((_rest73137321_ _rest7311_)
                 (_else73157329_ (lambda () _r7312_))
                 (_K73177335_
                  (lambda (_rest7332_ _x7333_)
                    (let ((__tmp8085 (_f7305_ _x7333_ _r7312_)))
                      (declare (not safe))
                      (_lp7309_ _rest7332_ __tmp8085)))))
            (if (let () (declare (not safe)) (##pair? _rest73137321_))
                (let ((_hd73187338_
                       (let () (declare (not safe)) (##car _rest73137321_)))
                      (_tl73197340_
                       (let () (declare (not safe)) (##cdr _rest73137321_))))
                  (let* ((_x7343_ _hd73187338_) (_rest7345_ _tl73197340_))
                    (declare (not safe))
                    (_K73177335_ _rest7345_ _x7343_)))
                (let () (declare (not safe)) (_else73157329_)))))))
    (define foldl2
      (lambda (_f7228_ _iv7229_ _lst17230_ _lst27231_)
        (let _lp7233_ ((_rest17235_ _lst17230_)
                       (_rest27236_ _lst27231_)
                       (_r7237_ _iv7229_))
          (let* ((_rest172387246_ _rest17235_)
                 (_else72407254_ (lambda () _r7237_))
                 (_K72427293_
                  (lambda (_rest17257_ _x17258_)
                    (let* ((_rest272597267_ _rest27236_)
                           (_else72617275_ (lambda () _r7237_))
                           (_K72637281_
                            (lambda (_rest27278_ _x27279_)
                              (let ((__tmp8086
                                     (_f7228_ _x17258_ _x27279_ _r7237_)))
                                (declare (not safe))
                                (_lp7233_
                                 _rest17257_
                                 _rest27278_
                                 __tmp8086)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest272597267_))
                          (let ((_hd72647284_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest272597267_)))
                                (_tl72657286_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest272597267_))))
                            (let* ((_x27289_ _hd72647284_)
                                   (_rest27291_ _tl72657286_))
                              (declare (not safe))
                              (_K72637281_ _rest27291_ _x27289_)))
                          (let () (declare (not safe)) (_else72617275_)))))))
            (if (let () (declare (not safe)) (##pair? _rest172387246_))
                (let ((_hd72437296_
                       (let () (declare (not safe)) (##car _rest172387246_)))
                      (_tl72447298_
                       (let () (declare (not safe)) (##cdr _rest172387246_))))
                  (let* ((_x17301_ _hd72437296_) (_rest17303_ _tl72447298_))
                    (declare (not safe))
                    (_K72427293_ _rest17303_ _x17301_)))
                (let () (declare (not safe)) (_else72407254_)))))))
    (define foldl
      (lambda _g8088_
        (let ((_g8087_ (let () (declare (not safe)) (##length _g8088_))))
          (cond ((let () (declare (not safe)) (##fx= _g8087_ 3))
                 (apply (lambda (_f7213_ _iv7214_ _lst7215_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f7213_ _iv7214_ _lst7215_)))
                        _g8088_))
                ((let () (declare (not safe)) (##fx= _g8087_ 4))
                 (apply (lambda (_f7217_ _iv7218_ _lst17219_ _lst27220_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f7217_ _iv7218_ _lst17219_ _lst27220_)))
                        _g8088_))
                ((let () (declare (not safe)) (##fx>= _g8087_ 4))
                 (apply foldl* _g8088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g8088_))))))
    (define foldl*
      (lambda (_f7201_ _iv7202_ . _rest7203_)
        (let _recur7205_ ((_iv7207_ _iv7202_) (_rest7208_ _rest7203_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest7208_))
              (let ((__tmp8090
                     (apply _f7201_
                            (let ((__tmp8092
                                   (lambda (_xs7210_ _r7211_)
                                     (let ((__tmp8093 (car _xs7210_)))
                                       (declare (not safe))
                                       (cons __tmp8093 _r7211_))))
                                  (__tmp8091 (list _iv7207_)))
                              (declare (not safe))
                              (foldr1 __tmp8092 __tmp8091 _rest7208_))))
                    (__tmp8089 (map cdr _rest7208_)))
                (declare (not safe))
                (_recur7205_ __tmp8090 __tmp8089))
              _iv7207_))))
    (define foldr1
      (lambda (_f7160_ _iv7161_ _lst7162_)
        (let _recur7164_ ((_rest7166_ _lst7162_))
          (let* ((_rest71677175_ _rest7166_)
                 (_else71697183_ (lambda () _iv7161_))
                 (_K71717189_
                  (lambda (_rest7186_ _x7187_)
                    (_f7160_ _x7187_
                             (let ()
                               (declare (not safe))
                               (_recur7164_ _rest7186_))))))
            (if (let () (declare (not safe)) (##pair? _rest71677175_))
                (let ((_hd71727192_
                       (let () (declare (not safe)) (##car _rest71677175_)))
                      (_tl71737194_
                       (let () (declare (not safe)) (##cdr _rest71677175_))))
                  (let* ((_x7197_ _hd71727192_) (_rest7199_ _tl71737194_))
                    (declare (not safe))
                    (_K71717189_ _rest7199_ _x7197_)))
                (let () (declare (not safe)) (_else71697183_)))))))
    (define foldr2
      (lambda (_f7084_ _iv7085_ _lst17086_ _lst27087_)
        (let _recur7089_ ((_rest17091_ _lst17086_) (_rest27092_ _lst27087_))
          (let* ((_rest170937101_ _rest17091_)
                 (_else70957109_ (lambda () _iv7085_))
                 (_K70977148_
                  (lambda (_rest17112_ _x17113_)
                    (let* ((_rest271147122_ _rest27092_)
                           (_else71167130_ (lambda () _iv7085_))
                           (_K71187136_
                            (lambda (_rest27133_ _x27134_)
                              (_f7084_ _x17113_
                                       _x27134_
                                       (let ()
                                         (declare (not safe))
                                         (_recur7089_
                                          _rest17112_
                                          _rest27133_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest271147122_))
                          (let ((_hd71197139_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest271147122_)))
                                (_tl71207141_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest271147122_))))
                            (let* ((_x27144_ _hd71197139_)
                                   (_rest27146_ _tl71207141_))
                              (declare (not safe))
                              (_K71187136_ _rest27146_ _x27144_)))
                          (let () (declare (not safe)) (_else71167130_)))))))
            (if (let () (declare (not safe)) (##pair? _rest170937101_))
                (let ((_hd70987151_
                       (let () (declare (not safe)) (##car _rest170937101_)))
                      (_tl70997153_
                       (let () (declare (not safe)) (##cdr _rest170937101_))))
                  (let* ((_x17156_ _hd70987151_) (_rest17158_ _tl70997153_))
                    (declare (not safe))
                    (_K70977148_ _rest17158_ _x17156_)))
                (let () (declare (not safe)) (_else70957109_)))))))
    (define foldr
      (lambda _g8095_
        (let ((_g8094_ (let () (declare (not safe)) (##length _g8095_))))
          (cond ((let () (declare (not safe)) (##fx= _g8094_ 3))
                 (apply (lambda (_f7069_ _iv7070_ _lst7071_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f7069_ _iv7070_ _lst7071_)))
                        _g8095_))
                ((let () (declare (not safe)) (##fx= _g8094_ 4))
                 (apply (lambda (_f7073_ _iv7074_ _lst17075_ _lst27076_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f7073_ _iv7074_ _lst17075_ _lst27076_)))
                        _g8095_))
                ((let () (declare (not safe)) (##fx>= _g8094_ 4))
                 (apply foldr* _g8095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g8095_))))))
    (define foldr*
      (lambda (_f7058_ _iv7059_ . _rest7060_)
        (let _recur7062_ ((_rest7064_ _rest7060_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest7064_))
              (apply _f7058_
                     (let ((__tmp8098
                            (lambda (_xs7066_ _r7067_)
                              (let ((__tmp8099 (car _xs7066_)))
                                (declare (not safe))
                                (cons __tmp8099 _r7067_))))
                           (__tmp8096
                            (list (let ((__tmp8097 (map cdr _rest7064_)))
                                    (declare (not safe))
                                    (_recur7062_ __tmp8097)))))
                       (declare (not safe))
                       (foldr1 __tmp8098 __tmp8096 _rest7064_)))
              _iv7059_))))
    (define andmap1
      (lambda (_f7018_ _lst7019_)
        (let _lp7021_ ((_rest7023_ _lst7019_))
          (let* ((_rest70247032_ _rest7023_)
                 (_else70267040_ (lambda () '#t))
                 (_K70287046_
                  (lambda (_rest7043_ _x7044_)
                    (if (_f7018_ _x7044_)
                        (let () (declare (not safe)) (_lp7021_ _rest7043_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest70247032_))
                (let ((_hd70297049_
                       (let () (declare (not safe)) (##car _rest70247032_)))
                      (_tl70307051_
                       (let () (declare (not safe)) (##cdr _rest70247032_))))
                  (let* ((_x7054_ _hd70297049_) (_rest7056_ _tl70307051_))
                    (declare (not safe))
                    (_K70287046_ _rest7056_ _x7054_)))
                (let () (declare (not safe)) (_else70267040_)))))))
    (define andmap2
      (lambda (_f6943_ _lst16944_ _lst26945_)
        (let _lp6947_ ((_rest16949_ _lst16944_) (_rest26950_ _lst26945_))
          (let* ((_rest169516959_ _rest16949_)
                 (_else69536967_ (lambda () '#t))
                 (_K69557006_
                  (lambda (_rest16970_ _x16971_)
                    (let* ((_rest269726980_ _rest26950_)
                           (_else69746988_ (lambda () '#t))
                           (_K69766994_
                            (lambda (_rest26991_ _x26992_)
                              (if (_f6943_ _x16971_ _x26992_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp6947_ _rest16970_ _rest26991_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest269726980_))
                          (let ((_hd69776997_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest269726980_)))
                                (_tl69786999_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest269726980_))))
                            (let* ((_x27002_ _hd69776997_)
                                   (_rest27004_ _tl69786999_))
                              (declare (not safe))
                              (_K69766994_ _rest27004_ _x27002_)))
                          (let () (declare (not safe)) (_else69746988_)))))))
            (if (let () (declare (not safe)) (##pair? _rest169516959_))
                (let ((_hd69567009_
                       (let () (declare (not safe)) (##car _rest169516959_)))
                      (_tl69577011_
                       (let () (declare (not safe)) (##cdr _rest169516959_))))
                  (let* ((_x17014_ _hd69567009_) (_rest17016_ _tl69577011_))
                    (declare (not safe))
                    (_K69557006_ _rest17016_ _x17014_)))
                (let () (declare (not safe)) (_else69536967_)))))))
    (define andmap
      (lambda _g8101_
        (let ((_g8100_ (let () (declare (not safe)) (##length _g8101_))))
          (cond ((let () (declare (not safe)) (##fx= _g8100_ 2))
                 (apply (lambda (_f6931_ _lst6932_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f6931_ _lst6932_)))
                        _g8101_))
                ((let () (declare (not safe)) (##fx= _g8100_ 3))
                 (apply (lambda (_f6934_ _lst16935_ _lst26936_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f6934_ _lst16935_ _lst26936_)))
                        _g8101_))
                ((let () (declare (not safe)) (##fx>= _g8100_ 3))
                 (apply andmap* _g8101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g8101_))))))
    (define andmap*
      (lambda (_f6924_ . _rest6925_)
        (let _recur6927_ ((_rest6929_ _rest6925_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest6929_))
              (if (apply _f6924_ (map car _rest6929_))
                  (let ((__tmp8102 (map cdr _rest6929_)))
                    (declare (not safe))
                    (_recur6927_ __tmp8102))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f6881_ _lst6882_)
        (let _lp6884_ ((_rest6886_ _lst6882_))
          (let* ((_rest68876895_ _rest6886_)
                 (_else68896903_ (lambda () '#f))
                 (_K68916912_
                  (lambda (_rest6906_ _x6907_)
                    (let ((_$e6909_ (_f6881_ _x6907_)))
                      (if _$e6909_
                          _$e6909_
                          (let ()
                            (declare (not safe))
                            (_lp6884_ _rest6906_)))))))
            (if (let () (declare (not safe)) (##pair? _rest68876895_))
                (let ((_hd68926915_
                       (let () (declare (not safe)) (##car _rest68876895_)))
                      (_tl68936917_
                       (let () (declare (not safe)) (##cdr _rest68876895_))))
                  (let* ((_x6920_ _hd68926915_) (_rest6922_ _tl68936917_))
                    (declare (not safe))
                    (_K68916912_ _rest6922_ _x6920_)))
                (let () (declare (not safe)) (_else68896903_)))))))
    (define ormap2
      (lambda (_f6803_ _lst16804_ _lst26805_)
        (let _lp6807_ ((_rest16809_ _lst16804_) (_rest26810_ _lst26805_))
          (let* ((_rest168116819_ _rest16809_)
                 (_else68136827_ (lambda () '#f))
                 (_K68156869_
                  (lambda (_rest16830_ _x16831_)
                    (let* ((_rest268326840_ _rest26810_)
                           (_else68346848_ (lambda () '#f))
                           (_K68366857_
                            (lambda (_rest26851_ _x26852_)
                              (let ((_$e6854_ (_f6803_ _x16831_ _x26852_)))
                                (if _$e6854_
                                    _$e6854_
                                    (let ()
                                      (declare (not safe))
                                      (_lp6807_ _rest16830_ _rest26851_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest268326840_))
                          (let ((_hd68376860_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest268326840_)))
                                (_tl68386862_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest268326840_))))
                            (let* ((_x26865_ _hd68376860_)
                                   (_rest26867_ _tl68386862_))
                              (declare (not safe))
                              (_K68366857_ _rest26867_ _x26865_)))
                          (let () (declare (not safe)) (_else68346848_)))))))
            (if (let () (declare (not safe)) (##pair? _rest168116819_))
                (let ((_hd68166872_
                       (let () (declare (not safe)) (##car _rest168116819_)))
                      (_tl68176874_
                       (let () (declare (not safe)) (##cdr _rest168116819_))))
                  (let* ((_x16877_ _hd68166872_) (_rest16879_ _tl68176874_))
                    (declare (not safe))
                    (_K68156869_ _rest16879_ _x16877_)))
                (let () (declare (not safe)) (_else68136827_)))))))
    (define ormap
      (lambda _g8104_
        (let ((_g8103_ (let () (declare (not safe)) (##length _g8104_))))
          (cond ((let () (declare (not safe)) (##fx= _g8103_ 2))
                 (apply (lambda (_f6791_ _lst6792_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f6791_ _lst6792_)))
                        _g8104_))
                ((let () (declare (not safe)) (##fx= _g8103_ 3))
                 (apply (lambda (_f6794_ _lst16795_ _lst26796_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f6794_ _lst16795_ _lst26796_)))
                        _g8104_))
                ((let () (declare (not safe)) (##fx>= _g8103_ 3))
                 (apply ormap* _g8104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g8104_))))))
    (define ormap*
      (lambda (_f6781_ . _rest6782_)
        (let _recur6784_ ((_rest6786_ _rest6782_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest6786_))
              (let ((_$e6788_ (apply _f6781_ (map car _rest6786_))))
                (if _$e6788_
                    _$e6788_
                    (let ((__tmp8105 (map cdr _rest6786_)))
                      (declare (not safe))
                      (_recur6784_ __tmp8105))))
              '#f))))
    (define filter
      (lambda (_f6739_ _lst6740_)
        (let _recur6742_ ((_lst6744_ _lst6740_))
          (let* ((_lst67456753_ _lst6744_)
                 (_else67476761_ (lambda () '()))
                 (_K67496769_
                  (lambda (_rest6764_ _hd6765_)
                    (if (_f6739_ _hd6765_)
                        (let ((_tail6767_
                               (let ()
                                 (declare (not safe))
                                 (_recur6742_ _rest6764_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail6767_ _rest6764_))
                              _lst6744_
                              (let ()
                                (declare (not safe))
                                (cons _hd6765_ _tail6767_))))
                        (let ()
                          (declare (not safe))
                          (_recur6742_ _rest6764_))))))
            (if (let () (declare (not safe)) (##pair? _lst67456753_))
                (let ((_hd67506772_
                       (let () (declare (not safe)) (##car _lst67456753_)))
                      (_tl67516774_
                       (let () (declare (not safe)) (##cdr _lst67456753_))))
                  (let* ((_hd6777_ _hd67506772_) (_rest6779_ _tl67516774_))
                    (declare (not safe))
                    (_K67496769_ _rest6779_ _hd6777_)))
                (let () (declare (not safe)) (_else67476761_)))))))
    (define filter-map1
      (lambda (_f6694_ _lst6695_)
        (let _recur6697_ ((_rest6699_ _lst6695_))
          (let* ((_rest67006708_ _rest6699_)
                 (_else67026716_ (lambda () '()))
                 (_K67046727_
                  (lambda (_rest6719_ _x6720_)
                    (let ((_$e6722_ (_f6694_ _x6720_)))
                      (if _$e6722_
                          ((lambda (_r6725_)
                             (let ((__tmp8106
                                    (let ()
                                      (declare (not safe))
                                      (_recur6697_ _rest6719_))))
                               (declare (not safe))
                               (cons _r6725_ __tmp8106)))
                           _$e6722_)
                          (let ()
                            (declare (not safe))
                            (_recur6697_ _rest6719_)))))))
            (if (let () (declare (not safe)) (##pair? _rest67006708_))
                (let ((_hd67056730_
                       (let () (declare (not safe)) (##car _rest67006708_)))
                      (_tl67066732_
                       (let () (declare (not safe)) (##cdr _rest67006708_))))
                  (let* ((_x6735_ _hd67056730_) (_rest6737_ _tl67066732_))
                    (declare (not safe))
                    (_K67046727_ _rest6737_ _x6735_)))
                (let () (declare (not safe)) (_else67026716_)))))))
    (define filter-map2
      (lambda (_f6614_ _lst16615_ _lst26616_)
        (let _recur6618_ ((_rest16620_ _lst16615_) (_rest26621_ _lst26616_))
          (let* ((_rest166226630_ _rest16620_)
                 (_else66246638_ (lambda () '()))
                 (_K66266682_
                  (lambda (_rest16641_ _x16642_)
                    (let* ((_rest266436651_ _rest26621_)
                           (_else66456659_ (lambda () '()))
                           (_K66476670_
                            (lambda (_rest26662_ _x26663_)
                              (let ((_$e6665_ (_f6614_ _x16642_ _x26663_)))
                                (if _$e6665_
                                    ((lambda (_r6668_)
                                       (let ((__tmp8107
                                              (let ()
                                                (declare (not safe))
                                                (_recur6618_
                                                 _rest16641_
                                                 _rest26662_))))
                                         (declare (not safe))
                                         (cons _r6668_ __tmp8107)))
                                     _$e6665_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur6618_
                                       _rest16641_
                                       _rest26662_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest266436651_))
                          (let ((_hd66486673_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest266436651_)))
                                (_tl66496675_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest266436651_))))
                            (let* ((_x26678_ _hd66486673_)
                                   (_rest26680_ _tl66496675_))
                              (declare (not safe))
                              (_K66476670_ _rest26680_ _x26678_)))
                          (let () (declare (not safe)) (_else66456659_)))))))
            (if (let () (declare (not safe)) (##pair? _rest166226630_))
                (let ((_hd66276685_
                       (let () (declare (not safe)) (##car _rest166226630_)))
                      (_tl66286687_
                       (let () (declare (not safe)) (##cdr _rest166226630_))))
                  (let* ((_x16690_ _hd66276685_) (_rest16692_ _tl66286687_))
                    (declare (not safe))
                    (_K66266682_ _rest16692_ _x16690_)))
                (let () (declare (not safe)) (_else66246638_)))))))
    (define filter-map
      (lambda _g8109_
        (let ((_g8108_ (let () (declare (not safe)) (##length _g8109_))))
          (cond ((let () (declare (not safe)) (##fx= _g8108_ 2))
                 (apply (lambda (_f6602_ _lst6603_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f6602_ _lst6603_)))
                        _g8109_))
                ((let () (declare (not safe)) (##fx= _g8108_ 3))
                 (apply (lambda (_f6605_ _lst16606_ _lst26607_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f6605_ _lst16606_ _lst26607_)))
                        _g8109_))
                ((let () (declare (not safe)) (##fx>= _g8108_ 3))
                 (apply filter-map* _g8109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g8109_))))))
    (define filter-map*
      (lambda (_f6590_ . _rest6591_)
        (let _recur6593_ ((_rest6595_ _rest6591_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest6595_))
              (let ((_$e6597_ (apply _f6590_ (map car _rest6595_))))
                (if _$e6597_
                    ((lambda (_r6600_)
                       (let ((__tmp8111
                              (let ((__tmp8112 (map cdr _rest6595_)))
                                (declare (not safe))
                                (_recur6593_ __tmp8112))))
                         (declare (not safe))
                         (cons _r6600_ __tmp8111)))
                     _$e6597_)
                    (let ((__tmp8110 (map cdr _rest6595_)))
                      (declare (not safe))
                      (_recur6593_ __tmp8110))))
              '()))))
    (define iota__%
      (lambda (_count6558_ _start6559_ _step6560_)
        (if (fixnum? _count6558_)
            '#!void
            (error '"expected fixnum" _count6558_))
        (if (let () (declare (not safe)) (number? _start6559_))
            '#!void
            (error '"expected number" _start6559_))
        (if (let () (declare (not safe)) (number? _step6560_))
            '#!void
            (error '"expected number" _step6560_))
        (let ((_root6562_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp6564_ ((_i6566_ '0)
                         (_x6567_ _start6559_)
                         (_tl6568_ _root6562_))
            (if (let () (declare (not safe)) (##fx< _i6566_ _count6558_))
                (let ((_tl*6570_
                       (let () (declare (not safe)) (cons _x6567_ '()))))
                  (let () (declare (not safe)) (##set-cdr! _tl6568_ _tl*6570_))
                  (let ((__tmp8114
                         (let () (declare (not safe)) (##fx+ _i6566_ '1)))
                        (__tmp8113 (+ _x6567_ _step6560_)))
                    (declare (not safe))
                    (_lp6564_ __tmp8114 __tmp8113 _tl*6570_)))
                (let () (declare (not safe)) (##cdr _root6562_)))))))
    (define iota__0
      (lambda (_count6575_)
        (let* ((_start6577_ '0) (_step6579_ '1))
          (declare (not safe))
          (iota__% _count6575_ _start6577_ _step6579_))))
    (define iota__1
      (lambda (_count6581_ _start6582_)
        (let ((_step6584_ '1))
          (declare (not safe))
          (iota__% _count6581_ _start6582_ _step6584_))))
    (define iota
      (lambda _g8116_
        (let ((_g8115_ (let () (declare (not safe)) (##length _g8116_))))
          (cond ((let () (declare (not safe)) (##fx= _g8115_ 1))
                 (apply (lambda (_count6575_)
                          (let () (declare (not safe)) (iota__0 _count6575_)))
                        _g8116_))
                ((let () (declare (not safe)) (##fx= _g8115_ 2))
                 (apply (lambda (_count6581_ _start6582_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count6581_ _start6582_)))
                        _g8116_))
                ((let () (declare (not safe)) (##fx= _g8115_ 3))
                 (apply (lambda (_count6586_ _start6587_ _step6588_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count6586_ _start6587_ _step6588_)))
                        _g8116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g8116_))))))
    (define last-pair
      (lambda (_lst6532_)
        (let* ((_lst65336540_ _lst6532_)
               (_E65356544_
                (lambda () (error '"No clause matching" _lst65336540_)))
               (_K65366549_
                (lambda (_rest6547_)
                  (if (let () (declare (not safe)) (pair? _rest6547_))
                      (let () (declare (not safe)) (last-pair _rest6547_))
                      _lst6532_))))
          (if (let () (declare (not safe)) (##pair? _lst65336540_))
              (let* ((_tl65386552_
                      (let () (declare (not safe)) (##cdr _lst65336540_)))
                     (_rest6555_ _tl65386552_))
                (declare (not safe))
                (_K65366549_ _rest6555_))
              (let () (declare (not safe)) (_E65356544_))))))
    (define last
      (lambda (_lst6530_)
        (car (let () (declare (not safe)) (last-pair _lst6530_)))))
    (define assgetq__%
      (lambda (_key6508_ _lst6510_ _default6512_)
        (let ((_$e6515_
               (if (let () (declare (not safe)) (pair? _lst6510_))
                   (assq _key6508_ _lst6510_)
                   '#f)))
          (if _$e6515_
              (cdr _$e6515_)
              (if (let () (declare (not safe)) (procedure? _default6512_))
                  (_default6512_ _key6508_)
                  _default6512_)))))
    (define assgetq__0
      (lambda (_key6521_ _lst6522_)
        (let ((_default6524_ '#f))
          (declare (not safe))
          (assgetq__% _key6521_ _lst6522_ _default6524_))))
    (define assgetq
      (lambda _g8118_
        (let ((_g8117_ (let () (declare (not safe)) (##length _g8118_))))
          (cond ((let () (declare (not safe)) (##fx= _g8117_ 2))
                 (apply (lambda (_key6521_ _lst6522_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key6521_ _lst6522_)))
                        _g8118_))
                ((let () (declare (not safe)) (##fx= _g8117_ 3))
                 (apply (lambda (_key6526_ _lst6527_ _default6528_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key6526_ _lst6527_ _default6528_)))
                        _g8118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g8118_))))))
    (define assgetv__%
      (lambda (_key6485_ _lst6487_ _default6489_)
        (let ((_$e6492_
               (if (let () (declare (not safe)) (pair? _lst6487_))
                   (assv _key6485_ _lst6487_)
                   '#f)))
          (if _$e6492_
              (cdr _$e6492_)
              (if (let () (declare (not safe)) (procedure? _default6489_))
                  (_default6489_ _key6485_)
                  _default6489_)))))
    (define assgetv__0
      (lambda (_key6498_ _lst6499_)
        (let ((_default6501_ '#f))
          (declare (not safe))
          (assgetv__% _key6498_ _lst6499_ _default6501_))))
    (define assgetv
      (lambda _g8120_
        (let ((_g8119_ (let () (declare (not safe)) (##length _g8120_))))
          (cond ((let () (declare (not safe)) (##fx= _g8119_ 2))
                 (apply (lambda (_key6498_ _lst6499_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key6498_ _lst6499_)))
                        _g8120_))
                ((let () (declare (not safe)) (##fx= _g8119_ 3))
                 (apply (lambda (_key6503_ _lst6504_ _default6505_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key6503_ _lst6504_ _default6505_)))
                        _g8120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g8120_))))))
    (define assget__%
      (lambda (_key6462_ _lst6464_ _default6466_)
        (let ((_$e6469_
               (if (let () (declare (not safe)) (pair? _lst6464_))
                   (assoc _key6462_ _lst6464_)
                   '#f)))
          (if _$e6469_
              (cdr _$e6469_)
              (if (let () (declare (not safe)) (procedure? _default6466_))
                  (_default6466_ _key6462_)
                  _default6466_)))))
    (define assget__0
      (lambda (_key6475_ _lst6476_)
        (let ((_default6478_ '#f))
          (declare (not safe))
          (assget__% _key6475_ _lst6476_ _default6478_))))
    (define assget
      (lambda _g8122_
        (let ((_g8121_ (let () (declare (not safe)) (##length _g8122_))))
          (cond ((let () (declare (not safe)) (##fx= _g8121_ 2))
                 (apply (lambda (_key6475_ _lst6476_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key6475_ _lst6476_)))
                        _g8122_))
                ((let () (declare (not safe)) (##fx= _g8121_ 3))
                 (apply (lambda (_key6480_ _lst6481_ _default6482_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key6480_ _lst6481_ _default6482_)))
                        _g8122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g8122_))))))
    (define pgetq__%
      (lambda (_key6391_ _lst6393_ _default6395_)
        (let _lp6398_ ((_rest6401_ _lst6393_))
          (let* ((_rest64036413_ _rest6401_)
                 (_else64056421_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default6395_))
                        (_default6395_ _key6391_)
                        _default6395_)))
                 (_K64076430_
                  (lambda (_rest6424_ _v6425_ _k6427_)
                    (if (let () (declare (not safe)) (eq? _k6427_ _key6391_))
                        _v6425_
                        (let () (declare (not safe)) (_lp6398_ _rest6424_))))))
            (if (let () (declare (not safe)) (##pair? _rest64036413_))
                (let ((_hd64086433_
                       (let () (declare (not safe)) (##car _rest64036413_)))
                      (_tl64096435_
                       (let () (declare (not safe)) (##cdr _rest64036413_))))
                  (let ((_k6438_ _hd64086433_))
                    (if (let () (declare (not safe)) (##pair? _tl64096435_))
                        (let ((_hd64106440_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl64096435_)))
                              (_tl64116442_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl64096435_))))
                          (let* ((_v6445_ _hd64106440_)
                                 (_rest6447_ _tl64116442_))
                            (declare (not safe))
                            (_K64076430_ _rest6447_ _v6445_ _k6438_)))
                        (let () (declare (not safe)) (_else64056421_)))))
                (let () (declare (not safe)) (_else64056421_)))))))
    (define pgetq__0
      (lambda (_key6452_ _lst6453_)
        (let ((_default6455_ '#f))
          (declare (not safe))
          (pgetq__% _key6452_ _lst6453_ _default6455_))))
    (define pgetq
      (lambda _g8124_
        (let ((_g8123_ (let () (declare (not safe)) (##length _g8124_))))
          (cond ((let () (declare (not safe)) (##fx= _g8123_ 2))
                 (apply (lambda (_key6452_ _lst6453_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key6452_ _lst6453_)))
                        _g8124_))
                ((let () (declare (not safe)) (##fx= _g8123_ 3))
                 (apply (lambda (_key6457_ _lst6458_ _default6459_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key6457_ _lst6458_ _default6459_)))
                        _g8124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g8124_))))))
    (define pgetv__%
      (lambda (_key6320_ _lst6322_ _default6324_)
        (let _lp6327_ ((_rest6330_ _lst6322_))
          (let* ((_rest63326342_ _rest6330_)
                 (_else63346350_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default6324_))
                        (_default6324_ _key6320_)
                        _default6324_)))
                 (_K63366359_
                  (lambda (_rest6353_ _v6354_ _k6356_)
                    (if (let () (declare (not safe)) (eqv? _k6356_ _key6320_))
                        _v6354_
                        (let () (declare (not safe)) (_lp6327_ _rest6353_))))))
            (if (let () (declare (not safe)) (##pair? _rest63326342_))
                (let ((_hd63376362_
                       (let () (declare (not safe)) (##car _rest63326342_)))
                      (_tl63386364_
                       (let () (declare (not safe)) (##cdr _rest63326342_))))
                  (let ((_k6367_ _hd63376362_))
                    (if (let () (declare (not safe)) (##pair? _tl63386364_))
                        (let ((_hd63396369_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl63386364_)))
                              (_tl63406371_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl63386364_))))
                          (let* ((_v6374_ _hd63396369_)
                                 (_rest6376_ _tl63406371_))
                            (declare (not safe))
                            (_K63366359_ _rest6376_ _v6374_ _k6367_)))
                        (let () (declare (not safe)) (_else63346350_)))))
                (let () (declare (not safe)) (_else63346350_)))))))
    (define pgetv__0
      (lambda (_key6381_ _lst6382_)
        (let ((_default6384_ '#f))
          (declare (not safe))
          (pgetv__% _key6381_ _lst6382_ _default6384_))))
    (define pgetv
      (lambda _g8126_
        (let ((_g8125_ (let () (declare (not safe)) (##length _g8126_))))
          (cond ((let () (declare (not safe)) (##fx= _g8125_ 2))
                 (apply (lambda (_key6381_ _lst6382_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key6381_ _lst6382_)))
                        _g8126_))
                ((let () (declare (not safe)) (##fx= _g8125_ 3))
                 (apply (lambda (_key6386_ _lst6387_ _default6388_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key6386_ _lst6387_ _default6388_)))
                        _g8126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g8126_))))))
    (define pget__%
      (lambda (_key6249_ _lst6251_ _default6253_)
        (let _lp6256_ ((_rest6259_ _lst6251_))
          (let* ((_rest62616271_ _rest6259_)
                 (_else62636279_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default6253_))
                        (_default6253_ _key6249_)
                        _default6253_)))
                 (_K62656288_
                  (lambda (_rest6282_ _v6283_ _k6285_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k6285_ _key6249_))
                        _v6283_
                        (let () (declare (not safe)) (_lp6256_ _rest6282_))))))
            (if (let () (declare (not safe)) (##pair? _rest62616271_))
                (let ((_hd62666291_
                       (let () (declare (not safe)) (##car _rest62616271_)))
                      (_tl62676293_
                       (let () (declare (not safe)) (##cdr _rest62616271_))))
                  (let ((_k6296_ _hd62666291_))
                    (if (let () (declare (not safe)) (##pair? _tl62676293_))
                        (let ((_hd62686298_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl62676293_)))
                              (_tl62696300_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl62676293_))))
                          (let* ((_v6303_ _hd62686298_)
                                 (_rest6305_ _tl62696300_))
                            (declare (not safe))
                            (_K62656288_ _rest6305_ _v6303_ _k6296_)))
                        (let () (declare (not safe)) (_else62636279_)))))
                (let () (declare (not safe)) (_else62636279_)))))))
    (define pget__0
      (lambda (_key6310_ _lst6311_)
        (let ((_default6313_ '#f))
          (declare (not safe))
          (pget__% _key6310_ _lst6311_ _default6313_))))
    (define pget
      (lambda _g8128_
        (let ((_g8127_ (let () (declare (not safe)) (##length _g8128_))))
          (cond ((let () (declare (not safe)) (##fx= _g8127_ 2))
                 (apply (lambda (_key6310_ _lst6311_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key6310_ _lst6311_)))
                        _g8128_))
                ((let () (declare (not safe)) (##fx= _g8127_ 3))
                 (apply (lambda (_key6315_ _lst6316_ _default6317_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key6315_ _lst6316_ _default6317_)))
                        _g8128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g8128_))))))
    (define find
      (lambda (_pred6242_ _lst6243_)
        (let ((_$e6245_
               (let () (declare (not safe)) (memf _pred6242_ _lst6243_))))
          (if _$e6245_ (car _$e6245_) '#f))))
    (define memf
      (lambda (_proc6202_ _lst6203_)
        (let _lp6205_ ((_rest6207_ _lst6203_))
          (let* ((_rest62086216_ _rest6207_)
                 (_else62106224_ (lambda () '#f))
                 (_K62126230_
                  (lambda (_tl6227_ _hd6228_)
                    (if (_proc6202_ _hd6228_)
                        _rest6207_
                        (let () (declare (not safe)) (_lp6205_ _tl6227_))))))
            (if (let () (declare (not safe)) (##pair? _rest62086216_))
                (let ((_hd62136233_
                       (let () (declare (not safe)) (##car _rest62086216_)))
                      (_tl62146235_
                       (let () (declare (not safe)) (##cdr _rest62086216_))))
                  (let* ((_hd6238_ _hd62136233_) (_tl6240_ _tl62146235_))
                    (declare (not safe))
                    (_K62126230_ _tl6240_ _hd6238_)))
                (let () (declare (not safe)) (_else62106224_)))))))
    (define remove1
      (lambda (_el6155_ _lst6157_)
        (let _lp6160_ ((_rest6163_ _lst6157_) (_r6165_ '()))
          (let* ((_rest61676175_ _rest6163_)
                 (_else61696183_ (lambda () _lst6157_))
                 (_K61716190_
                  (lambda (_rest6186_ _hd6187_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el6155_ _hd6187_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest6186_ _r6165_))
                        (let ((__tmp8129
                               (let ()
                                 (declare (not safe))
                                 (cons _hd6187_ _r6165_))))
                          (declare (not safe))
                          (_lp6160_ _rest6186_ __tmp8129))))))
            (if (let () (declare (not safe)) (##pair? _rest61676175_))
                (let ((_hd61726193_
                       (let () (declare (not safe)) (##car _rest61676175_)))
                      (_tl61736195_
                       (let () (declare (not safe)) (##cdr _rest61676175_))))
                  (let* ((_hd6198_ _hd61726193_) (_rest6200_ _tl61736195_))
                    (declare (not safe))
                    (_K61716190_ _rest6200_ _hd6198_)))
                (let () (declare (not safe)) (_else61696183_)))))))
    (define remv
      (lambda (_el6108_ _lst6110_)
        (let _lp6113_ ((_rest6116_ _lst6110_) (_r6118_ '()))
          (let* ((_rest61206128_ _rest6116_)
                 (_else61226136_ (lambda () _lst6110_))
                 (_K61246143_
                  (lambda (_rest6139_ _hd6140_)
                    (if (let () (declare (not safe)) (eqv? _el6108_ _hd6140_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest6139_ _r6118_))
                        (let ((__tmp8130
                               (let ()
                                 (declare (not safe))
                                 (cons _hd6140_ _r6118_))))
                          (declare (not safe))
                          (_lp6113_ _rest6139_ __tmp8130))))))
            (if (let () (declare (not safe)) (##pair? _rest61206128_))
                (let ((_hd61256146_
                       (let () (declare (not safe)) (##car _rest61206128_)))
                      (_tl61266148_
                       (let () (declare (not safe)) (##cdr _rest61206128_))))
                  (let* ((_hd6151_ _hd61256146_) (_rest6153_ _tl61266148_))
                    (declare (not safe))
                    (_K61246143_ _rest6153_ _hd6151_)))
                (let () (declare (not safe)) (_else61226136_)))))))
    (define remq
      (lambda (_el6061_ _lst6063_)
        (let _lp6066_ ((_rest6069_ _lst6063_) (_r6071_ '()))
          (let* ((_rest60736081_ _rest6069_)
                 (_else60756089_ (lambda () _lst6063_))
                 (_K60776096_
                  (lambda (_rest6092_ _hd6093_)
                    (if (let () (declare (not safe)) (eq? _el6061_ _hd6093_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest6092_ _r6071_))
                        (let ((__tmp8131
                               (let ()
                                 (declare (not safe))
                                 (cons _hd6093_ _r6071_))))
                          (declare (not safe))
                          (_lp6066_ _rest6092_ __tmp8131))))))
            (if (let () (declare (not safe)) (##pair? _rest60736081_))
                (let ((_hd60786099_
                       (let () (declare (not safe)) (##car _rest60736081_)))
                      (_tl60796101_
                       (let () (declare (not safe)) (##cdr _rest60736081_))))
                  (let* ((_hd6104_ _hd60786099_) (_rest6106_ _tl60796101_))
                    (declare (not safe))
                    (_K60776096_ _rest6106_ _hd6104_)))
                (let () (declare (not safe)) (_else60756089_)))))))
    (define remf
      (lambda (_proc6020_ _lst6021_)
        (let _lp6023_ ((_rest6025_ _lst6021_) (_r6026_ '()))
          (let* ((_rest60276035_ _rest6025_)
                 (_else60296043_ (lambda () _lst6021_))
                 (_K60316049_
                  (lambda (_rest6046_ _hd6047_)
                    (if (_proc6020_ _hd6047_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest6046_ _r6026_))
                        (let ((__tmp8132
                               (let ()
                                 (declare (not safe))
                                 (cons _hd6047_ _r6026_))))
                          (declare (not safe))
                          (_lp6023_ _rest6046_ __tmp8132))))))
            (if (let () (declare (not safe)) (##pair? _rest60276035_))
                (let ((_hd60326052_
                       (let () (declare (not safe)) (##car _rest60276035_)))
                      (_tl60336054_
                       (let () (declare (not safe)) (##cdr _rest60276035_))))
                  (let* ((_hd6057_ _hd60326052_) (_rest6059_ _tl60336054_))
                    (declare (not safe))
                    (_K60316049_ _rest6059_ _hd6057_)))
                (let () (declare (not safe)) (_else60296043_)))))))
    (define 1+ (lambda (_x6018_) (+ _x6018_ '1)))
    (define 1- (lambda (_x6016_) (- _x6016_ '1)))
    (define fx1+ (lambda (_x6014_) (fx+ _x6014_ '1)))
    (define fx1- (lambda (_x6012_) (fx- _x6012_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x6010_)
        (if (fixnum? _x6010_)
            (let () (declare (not safe)) (##fx>= _x6010_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x6008_)
        (if (fixnum? _x6008_)
            (let () (declare (not safe)) (##fx> _x6008_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x6006_) (let () (declare (not safe)) (eq? _x6006_ '0))))
    (define fx<0?
      (lambda (_x6004_)
        (if (fixnum? _x6004_)
            (let () (declare (not safe)) (##fx< _x6004_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x6002_)
        (if (fixnum? _x6002_)
            (let () (declare (not safe)) (##fx<= _x6002_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x6000_)
        (if (let () (declare (not safe)) (symbol? _x6000_))
            (let ((__tmp8133 (uninterned-symbol? _x6000_)))
              (declare (not safe))
              (not __tmp8133))
            '#f)))
    (define display-as-string
      (lambda (_x5972_ _port5973_)
        (if (or (let () (declare (not safe)) (string? _x5972_))
                (let () (declare (not safe)) (symbol? _x5972_))
                (keyword? _x5972_)
                (let () (declare (not safe)) (number? _x5972_))
                (let () (declare (not safe)) (char? _x5972_)))
            (display _x5972_ _port5973_)
            (if (let () (declare (not safe)) (pair? _x5972_))
                (begin
                  (let ((__tmp8134 (car _x5972_)))
                    (declare (not safe))
                    (display-as-string __tmp8134 _port5973_))
                  (let ((__tmp8135 (cdr _x5972_)))
                    (declare (not safe))
                    (display-as-string __tmp8135 _port5973_)))
                (if (let () (declare (not safe)) (vector? _x5972_))
                    (vector-for-each
                     (lambda (_g59865988_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g59865988_ _port5973_)))
                     _x5972_)
                    (if (or (let () (declare (not safe)) (null? _x5972_))
                            (let () (declare (not safe)) (eq? _x5972_ '#!void))
                            (let () (declare (not safe)) (eof-object? _x5972_))
                            (let () (declare (not safe)) (boolean? _x5972_)))
                        '#!void
                        (error '"cannot convert as string" _x5972_)))))))
    (define as-string__0
      (lambda (_x5960_)
        (if (let () (declare (not safe)) (string? _x5960_))
            _x5960_
            (if (let () (declare (not safe)) (symbol? _x5960_))
                (symbol->string _x5960_)
                (if (keyword? _x5960_)
                    (keyword->string _x5960_)
                    (call-with-output-string
                     '()
                     (lambda (_g59615963_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x5960_ _g59615963_)))))))))
    (define as-string__1
      (lambda _args5966_
        (call-with-output-string
         '()
         (lambda (_g59675969_)
           (let ()
             (declare (not safe))
             (display-as-string _args5966_ _g59675969_))))))
    (define as-string
      (lambda _g8137_
        (let ((_g8136_ (let () (declare (not safe)) (##length _g8137_))))
          (cond ((let () (declare (not safe)) (##fx= _g8136_ 1))
                 (apply (lambda (_x5960_)
                          (let () (declare (not safe)) (as-string__0 _x5960_)))
                        _g8137_))
                (#t (apply as-string__1 _g8137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g8137_))))))
    (define make-symbol__0
      (lambda (_x5956_)
        (if (interned-symbol? _x5956_)
            _x5956_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x5956_))))))
    (define make-symbol__1
      (lambda _args5958_ (string->symbol (apply as-string _args5958_))))
    (define make-symbol
      (lambda _g8139_
        (let ((_g8138_ (let () (declare (not safe)) (##length _g8139_))))
          (cond ((let () (declare (not safe)) (##fx= _g8138_ 1))
                 (apply (lambda (_x5956_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x5956_)))
                        _g8139_))
                (#t (apply make-symbol__1 _g8139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g8139_))))))
    (define make-keyword__0
      (lambda (_x5952_)
        (if (interned-keyword? _x5952_)
            _x5952_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x5952_))))))
    (define make-keyword__1
      (lambda _args5954_ (string->keyword (apply as-string _args5954_))))
    (define make-keyword
      (lambda _g8141_
        (let ((_g8140_ (let () (declare (not safe)) (##length _g8141_))))
          (cond ((let () (declare (not safe)) (##fx= _g8140_ 1))
                 (apply (lambda (_x5952_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x5952_)))
                        _g8141_))
                (#t (apply make-keyword__1 _g8141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g8141_))))))
    (define interned-keyword?
      (lambda (_x5950_)
        (if (keyword? _x5950_)
            (let ((__tmp8142 (uninterned-keyword? _x5950_)))
              (declare (not safe))
              (not __tmp8142))
            '#f)))
    (define symbol->keyword
      (lambda (_sym5948_)
        ((if (uninterned-symbol? _sym5948_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym5948_))))
    (define keyword->symbol
      (lambda (_kw5946_)
        ((if (uninterned-keyword? _kw5946_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw5946_))))
    (define bytes->string__%
      (lambda (_bstr5924_ _enc5925_)
        (if (let () (declare (not safe)) (eq? _enc5925_ 'UTF-8))
            (utf8->string _bstr5924_)
            (let* ((_in5927_
                    (open-input-u8vector
                     (let ((__tmp8143
                            (let ((__tmp8144
                                   (let ((__tmp8145
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr5924_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp8145))))
                              (declare (not safe))
                              (cons _enc5925_ __tmp8144))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp8143))))
                   (_len5929_ (u8vector-length _bstr5924_))
                   (_out5931_ (make-string _len5929_))
                   (_n5933_ (read-substring _out5931_ '0 _len5929_ _in5927_)))
              (string-shrink! _out5931_ _n5933_)
              _out5931_))))
    (define bytes->string__0
      (lambda (_bstr5939_)
        (let ((_enc5941_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr5939_ _enc5941_))))
    (define bytes->string
      (lambda _g8147_
        (let ((_g8146_ (let () (declare (not safe)) (##length _g8147_))))
          (cond ((let () (declare (not safe)) (##fx= _g8146_ 1))
                 (apply (lambda (_bstr5939_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr5939_)))
                        _g8147_))
                ((let () (declare (not safe)) (##fx= _g8146_ 2))
                 (apply (lambda (_bstr5943_ _enc5944_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr5943_ _enc5944_)))
                        _g8147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g8147_))))))
    (define string->bytes__%
      (lambda (_str5910_ _enc5911_)
        (if (let () (declare (not safe)) (eq? _enc5911_ 'UTF-8))
            (string->utf8 _str5910_)
            (substring->bytes
             _str5910_
             '0
             (string-length _str5910_)
             _enc5911_))))
    (define string->bytes__0
      (lambda (_str5916_)
        (let ((_enc5918_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str5916_ _enc5918_))))
    (define string->bytes
      (lambda _g8149_
        (let ((_g8148_ (let () (declare (not safe)) (##length _g8149_))))
          (cond ((let () (declare (not safe)) (##fx= _g8148_ 1))
                 (apply (lambda (_str5916_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str5916_)))
                        _g8149_))
                ((let () (declare (not safe)) (##fx= _g8148_ 2))
                 (apply (lambda (_str5920_ _enc5921_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str5920_ _enc5921_)))
                        _g8149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g8149_))))))
    (define substring->bytes__%
      (lambda (_str5888_ _start5889_ _end5890_ _enc5891_)
        (if (let () (declare (not safe)) (eq? _enc5891_ 'UTF-8))
            (string->utf8 _str5888_ _start5889_ _end5890_)
            (let ((_out5893_
                   (open-output-u8vector
                    (let ((__tmp8150
                           (let () (declare (not safe)) (cons _enc5891_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp8150)))))
              (write-substring _str5888_ _start5889_ _end5890_ _out5893_)
              (get-output-u8vector _out5893_)))))
    (define substring->bytes__0
      (lambda (_str5898_ _start5899_ _end5900_)
        (let ((_enc5902_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__% _str5898_ _start5899_ _end5900_ _enc5902_))))
    (define substring->bytes
      (lambda _g8152_
        (let ((_g8151_ (let () (declare (not safe)) (##length _g8152_))))
          (cond ((let () (declare (not safe)) (##fx= _g8151_ 3))
                 (apply (lambda (_str5898_ _start5899_ _end5900_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str5898_
                             _start5899_
                             _end5900_)))
                        _g8152_))
                ((let () (declare (not safe)) (##fx= _g8151_ 4))
                 (apply (lambda (_str5904_ _start5905_ _end5906_ _enc5907_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str5904_
                             _start5905_
                             _end5906_
                             _enc5907_)))
                        _g8152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g8152_))))))
    (define string-empty?
      (lambda (_str5885_)
        (let ((__tmp8153 (string-length _str5885_)))
          (declare (not safe))
          (##fxzero? __tmp8153))))
    (define string-prefix?
      (lambda (_prefix5875_ _str5876_)
        (let ((_str-len5878_ (string-length _str5876_))
              (_prefix-len5879_ (string-length _prefix5875_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len5879_ _str-len5878_))
              (let _lp5881_ ((_i5883_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i5883_ _prefix-len5879_))
                    (if (let ((__tmp8156
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str5876_ _i5883_)))
                              (__tmp8155
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix5875_ _i5883_))))
                          (declare (not safe))
                          (eq? __tmp8156 __tmp8155))
                        (let ((__tmp8154
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i5883_ '1))))
                          (declare (not safe))
                          (_lp5881_ __tmp8154))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str5853_ _char5854_ _start5855_)
        (let ((_len5857_ (string-length _str5853_)))
          (let _lp5859_ ((_k5861_ _start5855_))
            (if (let () (declare (not safe)) (##fx< _k5861_ _len5857_))
                (if (let ((__tmp8158
                           (let ()
                             (declare (not safe))
                             (##string-ref _str5853_ _k5861_))))
                      (declare (not safe))
                      (eq? _char5854_ __tmp8158))
                    _k5861_
                    (let ((__tmp8157
                           (let () (declare (not safe)) (##fx+ _k5861_ '1))))
                      (declare (not safe))
                      (_lp5859_ __tmp8157)))
                '#f)))))
    (define string-index__0
      (lambda (_str5866_ _char5867_)
        (let ((_start5869_ '0))
          (declare (not safe))
          (string-index__% _str5866_ _char5867_ _start5869_))))
    (define string-index
      (lambda _g8160_
        (let ((_g8159_ (let () (declare (not safe)) (##length _g8160_))))
          (cond ((let () (declare (not safe)) (##fx= _g8159_ 2))
                 (apply (lambda (_str5866_ _char5867_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str5866_ _char5867_)))
                        _g8160_))
                ((let () (declare (not safe)) (##fx= _g8159_ 3))
                 (apply (lambda (_str5871_ _char5872_ _start5873_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str5871_
                             _char5872_
                             _start5873_)))
                        _g8160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g8160_))))))
    (define string-rindex__%
      (lambda (_str5824_ _char5825_ _start5826_)
        (let* ((_len5828_ (string-length _str5824_))
               (_start5833_
                (let ((_$e5830_ _start5826_))
                  (if _$e5830_
                      _$e5830_
                      (let () (declare (not safe)) (##fx- _len5828_ '1))))))
          (let _lp5836_ ((_k5838_ _start5833_))
            (if (let () (declare (not safe)) (##fx>= _k5838_ '0))
                (if (let ((__tmp8162
                           (let ()
                             (declare (not safe))
                             (##string-ref _str5824_ _k5838_))))
                      (declare (not safe))
                      (eq? _char5825_ __tmp8162))
                    _k5838_
                    (let ((__tmp8161
                           (let () (declare (not safe)) (##fx- _k5838_ '1))))
                      (declare (not safe))
                      (_lp5836_ __tmp8161)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str5843_ _char5844_)
        (let ((_start5846_ '#f))
          (declare (not safe))
          (string-rindex__% _str5843_ _char5844_ _start5846_))))
    (define string-rindex
      (lambda _g8164_
        (let ((_g8163_ (let () (declare (not safe)) (##length _g8164_))))
          (cond ((let () (declare (not safe)) (##fx= _g8163_ 2))
                 (apply (lambda (_str5843_ _char5844_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str5843_ _char5844_)))
                        _g8164_))
                ((let () (declare (not safe)) (##fx= _g8163_ 3))
                 (apply (lambda (_str5848_ _char5849_ _start5850_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str5848_
                             _char5849_
                             _start5850_)))
                        _g8164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g8164_))))))
    (define string-split
      (lambda (_str5808_ _char5809_)
        (let ((_len5811_ (string-length _str5808_)))
          (let _lp5813_ ((_start5815_ '0) (_r5816_ '()))
            (let ((_$e5818_
                   (let ()
                     (declare (not safe))
                     (string-index _str5808_ _char5809_ _start5815_))))
              (if _$e5818_
                  ((lambda (_end5821_)
                     (let ((__tmp8168
                            (let () (declare (not safe)) (##fx+ _end5821_ '1)))
                           (__tmp8166
                            (let ((__tmp8167
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str5808_
                                      _start5815_
                                      _end5821_))))
                              (declare (not safe))
                              (cons __tmp8167 _r5816_))))
                       (declare (not safe))
                       (_lp5813_ __tmp8168 __tmp8166)))
                   _$e5818_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start5815_ _len5811_))
                      (let ((__tmp8165
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str5808_
                                      _start5815_
                                      _len5811_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp8165 _r5816_))
                      (reverse _r5816_))))))))
    (define string-join
      (lambda (_strs5713_ _join5714_)
        (letrec ((_join-length5716_
                  (lambda (_strs5767_ _jlen5768_)
                    (let _lp5770_ ((_rest5772_ _strs5767_) (_len5773_ '0))
                      (let* ((_rest57745782_ _rest5772_)
                             (_else57765790_ (lambda () '0))
                             (_K57785796_
                              (lambda (_rest5793_ _hd5794_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd5794_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest5793_))
                                        (let ((__tmp8170
                                               (let ((__tmp8171
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd5794_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp8171
                                                        _jlen5768_
                                                        _len5773_))))
                                          (declare (not safe))
                                          (_lp5770_ _rest5793_ __tmp8170))
                                        (let ((__tmp8169
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd5794_))))
                                          (declare (not safe))
                                          (##fx+ __tmp8169 _len5773_)))
                                    (error '"expected string" _hd5794_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest57745782_))
                            (let ((_hd57795799_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest57745782_)))
                                  (_tl57805801_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest57745782_))))
                              (let* ((_hd5804_ _hd57795799_)
                                     (_rest5806_ _tl57805801_))
                                (declare (not safe))
                                (_K57785796_ _rest5806_ _hd5804_)))
                            (let ()
                              (declare (not safe))
                              (_else57765790_))))))))
          (let* ((_join5718_
                  (if (let () (declare (not safe)) (char? _join5714_))
                      (string _join5714_)
                      (if (let () (declare (not safe)) (string? _join5714_))
                          _join5714_
                          (error '"expected string or char" _join5714_))))
                 (_jlen5720_
                  (let () (declare (not safe)) (##string-length _join5718_)))
                 (_olen5722_
                  (let ()
                    (declare (not safe))
                    (_join-length5716_ _strs5713_ _jlen5720_)))
                 (_ostr5724_ (make-string _olen5722_)))
            (let _lp5727_ ((_rest5729_ _strs5713_) (_k5730_ '0))
              (let* ((_rest57315739_ _rest5729_)
                     (_else57335747_ (lambda () '""))
                     (_K57355755_
                      (lambda (_rest5750_ _hd5751_)
                        (let ((_hdlen5753_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd5751_))))
                          (if (let () (declare (not safe)) (pair? _rest5750_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd5751_
                                   '0
                                   _hdlen5753_
                                   _ostr5724_
                                   _k5730_))
                                (let ((__tmp8172
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k5730_ _hdlen5753_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join5718_
                                   '0
                                   _jlen5720_
                                   _ostr5724_
                                   __tmp8172))
                                (let ((__tmp8173
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k5730_
                                                _hdlen5753_
                                                _jlen5720_))))
                                  (declare (not safe))
                                  (_lp5727_ _rest5750_ __tmp8173)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd5751_
                                   '0
                                   _hdlen5753_
                                   _ostr5724_
                                   _k5730_))
                                _ostr5724_))))))
                (if (let () (declare (not safe)) (##pair? _rest57315739_))
                    (let ((_hd57365758_
                           (let ()
                             (declare (not safe))
                             (##car _rest57315739_)))
                          (_tl57375760_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest57315739_))))
                      (let* ((_hd5763_ _hd57365758_) (_rest5765_ _tl57375760_))
                        (declare (not safe))
                        (_K57355755_ _rest5765_ _hd5763_)))
                    (let () (declare (not safe)) (_else57335747_)))))))))
    (define read-u8vector
      (lambda (_bytes5710_ _port5711_)
        (read-subu8vector
         _bytes5710_
         '0
         (u8vector-length _bytes5710_)
         _port5711_)))
    (define write-u8vector
      (lambda (_bytes5707_ _port5708_)
        (write-subu8vector
         _bytes5707_
         '0
         (u8vector-length _bytes5707_)
         _port5708_)))
    (define read-string
      (lambda (_str5704_ _port5705_)
        (read-substring _str5704_ '0 (string-length _str5704_) _port5705_)))
    (define write-string
      (lambda (_str5701_ _port5702_)
        (write-substring _str5701_ '0 (string-length _str5701_) _port5702_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag5672_
               _dbg-exprs5673_
               _dbg-thunks5674_
               _expr5675_
               _thunk5676_)
        (letrec ((_fo5678_
                  (lambda ()
                    (force-output (current-error-port))
                    (force-output (current-output-port))))
                 (_d5679_ (lambda (_x5687_)
                            (display _x5687_ (current-error-port))))
                 (_p5680_ (DBG-printer))
                 (_w5681_ (lambda (_x5689_)
                            (_p5680_ _x5689_ (current-error-port))))
                 (_n5682_ (lambda () (newline (current-error-port))))
                 (_v5683_ (lambda (_l5692_)
                            (for-each
                             (lambda (_x5694_)
                               (let () (declare (not safe)) (_d5679_ '" "))
                               (let () (declare (not safe)) (_w5681_ _x5694_)))
                             _l5692_)
                            (let () (declare (not safe)) (_n5682_))))
                 (_x5684_ (lambda (_expr5696_ _thunk5697_)
                            (let () (declare (not safe)) (_d5679_ '"  "))
                            (let () (declare (not safe)) (_w5681_ _expr5696_))
                            (let () (declare (not safe)) (_d5679_ '" =>"))
                            (call-with-values
                             _thunk5697_
                             (lambda _x5699_
                               (let () (declare (not safe)) (_v5683_ _x5699_))
                               (apply values _x5699_))))))
          (if _tag5672_
              (begin
                (if (let () (declare (not safe)) (eq? _tag5672_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_d5679_ _tag5672_))
                      (let () (declare (not safe)) (_n5682_))))
                (for-each _x5684_ _dbg-exprs5673_ _dbg-thunks5674_)
                (if _thunk5676_
                    (let ()
                      (declare (not safe))
                      (_x5684_ _expr5675_ _thunk5676_))
                    '#!void))
              (if _thunk5676_ (_thunk5676_) '#!void)))))))
