(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1710715075)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _paths79586_
        (for-each
         (lambda (_p79588_)
           (set! __load-path
                 (let () (declare (not safe)) (cons _p79588_ __load-path))))
         (reverse! _paths79586_))))
    (define set-load-path!
      (lambda (_paths79584_) (set! __load-path _paths79584_)))
    (define load-module
      (lambda (_modpath79572_)
        (let ((_$e79574_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79572_))))
          (if _$e79574_
              _$e79574_
              (let ((_$e79577_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath79572_))))
                (if _$e79577_
                    ((lambda (_path79580_)
                       (let ((_loaded-path79582_ (load _path79580_)))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            __modules
                            _modpath79572_
                            _loaded-path79582_))
                         _loaded-path79582_))
                     _$e79577_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath79572_))))))))
    (define reload-module!
      (lambda (_modpath79558_)
        (let ((_$e79560_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79558_))))
          (if _$e79560_
              ((lambda (_current-path79563_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-path79563_ 'builtin))
                     (let ((_latest-path79565_
                            (let ()
                              (declare (not safe))
                              (find-library-module _modpath79558_))))
                       (if (or (let ((__tmp79590
                                      (path-extension _current-path79563_)))
                                 (declare (not safe))
                                 (equal? __tmp79590 '".scm"))
                               (let ((__tmp79591
                                      (let ()
                                        (declare (not safe))
                                        (equal? _current-path79563_
                                                _latest-path79565_))))
                                 (declare (not safe))
                                 (not __tmp79591)))
                           (let ((_loaded-path79570_ (load _modpath79558_)))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                __modules
                                _modpath79558_
                                _loaded-path79570_))
                             _loaded-path79570_)
                           '#!void))
                     (let ()
                       (declare (not safe))
                       (error '"cannot reload builtin module"
                              _modpath79558_))))
               _$e79560_)
              (let () (declare (not safe)) (load-module _modpath79558_))))))
    (define find-library-module
      (lambda (_modpath79493_)
        (letrec ((_find-compiled-file79495_
                  (lambda (_npath79547_)
                    (let ((_basepath79549_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79547_ '".o"))))
                      (let _lp79551_ ((_current79553_ '#f) (_n79554_ '1))
                        (let ((_next79556_
                               (let ((__tmp79592 (number->string _n79554_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath79549_
                                  __tmp79592))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next79556_))
                              (let ((__tmp79593
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n79554_ '1))))
                                (declare (not safe))
                                (_lp79551_ _next79556_ __tmp79593))
                              _current79553_))))))
                 (_find-source-file79496_
                  (lambda (_npath79543_)
                    (let ((_spath79545_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79543_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath79545_))
                          _spath79545_
                          '#f)))))
          (let _lp79498_ ((_rest79500_
                           (let () (declare (not safe)) (load-path))))
            (let* ((_rest7950179509_ _rest79500_)
                   (_else7950379517_ (lambda () '#f))
                   (_K7950579531_
                    (lambda (_rest79520_ _dir79521_)
                      (let* ((_npath79523_
                              (path-expand
                               _modpath79493_
                               (path-expand _dir79521_)))
                             (_$e79525_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file79495_ _npath79523_))))
                        (if _$e79525_
                            (path-normalize _$e79525_)
                            (let ((_$e79528_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file79496_ _npath79523_))))
                              (if _$e79528_
                                  (path-normalize _$e79528_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp79498_ _rest79520_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7950179509_))
                  (let ((_hd7950679534_
                         (let ()
                           (declare (not safe))
                           (##car _rest7950179509_)))
                        (_tl7950779536_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7950179509_))))
                    (let* ((_dir79539_ _hd7950679534_)
                           (_rest79541_ _tl7950779536_))
                      (declare (not safe))
                      (_K7950579531_ _rest79541_ _dir79539_)))
                  (let () (declare (not safe)) (_else7950379517_))))))))))
