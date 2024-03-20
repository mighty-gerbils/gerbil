(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1710943025)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _paths79968_
        (for-each
         (lambda (_p79970_)
           (set! __load-path
                 (let () (declare (not safe)) (cons _p79970_ __load-path))))
         (reverse! _paths79968_))))
    (define set-load-path!
      (lambda (_paths79966_) (set! __load-path _paths79966_)))
    (define load-module
      (lambda (_modpath79954_)
        (let ((_$e79956_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79954_))))
          (if _$e79956_
              _$e79956_
              (let ((_$e79959_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath79954_))))
                (if _$e79959_
                    ((lambda (_path79962_)
                       (let ((_loaded-path79964_ (load _path79962_)))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            __modules
                            _modpath79954_
                            _loaded-path79964_))
                         _loaded-path79964_))
                     _$e79959_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath79954_))))))))
    (define reload-module!
      (lambda (_modpath79940_)
        (let ((_$e79942_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79940_))))
          (if _$e79942_
              ((lambda (_current-path79945_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-path79945_ 'builtin))
                     (let ((_latest-path79947_
                            (let ()
                              (declare (not safe))
                              (find-library-module _modpath79940_))))
                       (if (or (let ((__tmp79972
                                      (path-extension _current-path79945_)))
                                 (declare (not safe))
                                 (equal? __tmp79972 '".scm"))
                               (let ((__tmp79973
                                      (let ()
                                        (declare (not safe))
                                        (equal? _current-path79945_
                                                _latest-path79947_))))
                                 (declare (not safe))
                                 (not __tmp79973)))
                           (let ((_loaded-path79952_ (load _modpath79940_)))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                __modules
                                _modpath79940_
                                _loaded-path79952_))
                             _loaded-path79952_)
                           '#!void))
                     (let ()
                       (declare (not safe))
                       (error '"cannot reload builtin module"
                              _modpath79940_))))
               _$e79942_)
              (let () (declare (not safe)) (load-module _modpath79940_))))))
    (define find-library-module
      (lambda (_modpath79875_)
        (letrec ((_find-compiled-file79877_
                  (lambda (_npath79929_)
                    (let ((_basepath79931_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79929_ '".o"))))
                      (let _lp79933_ ((_current79935_ '#f) (_n79936_ '1))
                        (let ((_next79938_
                               (let ((__tmp79974 (number->string _n79936_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath79931_
                                  __tmp79974))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next79938_))
                              (let ((__tmp79975
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n79936_ '1))))
                                (declare (not safe))
                                (_lp79933_ _next79938_ __tmp79975))
                              _current79935_))))))
                 (_find-source-file79878_
                  (lambda (_npath79925_)
                    (let ((_spath79927_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79925_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath79927_))
                          _spath79927_
                          '#f)))))
          (let _lp79880_ ((_rest79882_
                           (let () (declare (not safe)) (load-path))))
            (let* ((_rest7988379891_ _rest79882_)
                   (_else7988579899_ (lambda () '#f))
                   (_K7988779913_
                    (lambda (_rest79902_ _dir79903_)
                      (let* ((_npath79905_
                              (path-expand
                               _modpath79875_
                               (path-expand _dir79903_)))
                             (_$e79907_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file79877_ _npath79905_))))
                        (if _$e79907_
                            (path-normalize _$e79907_)
                            (let ((_$e79910_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file79878_ _npath79905_))))
                              (if _$e79910_
                                  (path-normalize _$e79910_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp79880_ _rest79902_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7988379891_))
                  (let ((_hd7988879916_
                         (let ()
                           (declare (not safe))
                           (##car _rest7988379891_)))
                        (_tl7988979918_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7988379891_))))
                    (let* ((_dir79921_ _hd7988879916_)
                           (_rest79923_ _tl7988979918_))
                      (declare (not safe))
                      (_K7988779913_ _rest79923_ _dir79921_)))
                  (let () (declare (not safe)) (_else7988579899_))))))))))
