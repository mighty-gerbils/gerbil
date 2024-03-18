(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1710781149)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _paths79963_
        (for-each
         (lambda (_p79965_)
           (set! __load-path
                 (let () (declare (not safe)) (cons _p79965_ __load-path))))
         (reverse! _paths79963_))))
    (define set-load-path!
      (lambda (_paths79961_) (set! __load-path _paths79961_)))
    (define load-module
      (lambda (_modpath79949_)
        (let ((_$e79951_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79949_))))
          (if _$e79951_
              _$e79951_
              (let ((_$e79954_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath79949_))))
                (if _$e79954_
                    ((lambda (_path79957_)
                       (let ((_loaded-path79959_ (load _path79957_)))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            __modules
                            _modpath79949_
                            _loaded-path79959_))
                         _loaded-path79959_))
                     _$e79954_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath79949_))))))))
    (define reload-module!
      (lambda (_modpath79935_)
        (let ((_$e79937_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79935_))))
          (if _$e79937_
              ((lambda (_current-path79940_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-path79940_ 'builtin))
                     (let ((_latest-path79942_
                            (let ()
                              (declare (not safe))
                              (find-library-module _modpath79935_))))
                       (if (or (let ((__tmp79967
                                      (path-extension _current-path79940_)))
                                 (declare (not safe))
                                 (equal? __tmp79967 '".scm"))
                               (let ((__tmp79968
                                      (let ()
                                        (declare (not safe))
                                        (equal? _current-path79940_
                                                _latest-path79942_))))
                                 (declare (not safe))
                                 (not __tmp79968)))
                           (let ((_loaded-path79947_ (load _modpath79935_)))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                __modules
                                _modpath79935_
                                _loaded-path79947_))
                             _loaded-path79947_)
                           '#!void))
                     (let ()
                       (declare (not safe))
                       (error '"cannot reload builtin module"
                              _modpath79935_))))
               _$e79937_)
              (let () (declare (not safe)) (load-module _modpath79935_))))))
    (define find-library-module
      (lambda (_modpath79870_)
        (letrec ((_find-compiled-file79872_
                  (lambda (_npath79924_)
                    (let ((_basepath79926_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79924_ '".o"))))
                      (let _lp79928_ ((_current79930_ '#f) (_n79931_ '1))
                        (let ((_next79933_
                               (let ((__tmp79969 (number->string _n79931_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath79926_
                                  __tmp79969))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next79933_))
                              (let ((__tmp79970
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n79931_ '1))))
                                (declare (not safe))
                                (_lp79928_ _next79933_ __tmp79970))
                              _current79930_))))))
                 (_find-source-file79873_
                  (lambda (_npath79920_)
                    (let ((_spath79922_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79920_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath79922_))
                          _spath79922_
                          '#f)))))
          (let _lp79875_ ((_rest79877_
                           (let () (declare (not safe)) (load-path))))
            (let* ((_rest7987879886_ _rest79877_)
                   (_else7988079894_ (lambda () '#f))
                   (_K7988279908_
                    (lambda (_rest79897_ _dir79898_)
                      (let* ((_npath79900_
                              (path-expand
                               _modpath79870_
                               (path-expand _dir79898_)))
                             (_$e79902_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file79872_ _npath79900_))))
                        (if _$e79902_
                            (path-normalize _$e79902_)
                            (let ((_$e79905_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file79873_ _npath79900_))))
                              (if _$e79905_
                                  (path-normalize _$e79905_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp79875_ _rest79897_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7987879886_))
                  (let ((_hd7988379911_
                         (let ()
                           (declare (not safe))
                           (##car _rest7987879886_)))
                        (_tl7988479913_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7987879886_))))
                    (let* ((_dir79916_ _hd7988379911_)
                           (_rest79918_ _tl7988479913_))
                      (declare (not safe))
                      (_K7988279908_ _rest79918_ _dir79916_)))
                  (let () (declare (not safe)) (_else7988079894_))))))))))
