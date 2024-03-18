(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1710776831)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _paths79916_
        (for-each
         (lambda (_p79918_)
           (set! __load-path
                 (let () (declare (not safe)) (cons _p79918_ __load-path))))
         (reverse! _paths79916_))))
    (define set-load-path!
      (lambda (_paths79914_) (set! __load-path _paths79914_)))
    (define load-module
      (lambda (_modpath79902_)
        (let ((_$e79904_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79902_))))
          (if _$e79904_
              _$e79904_
              (let ((_$e79907_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath79902_))))
                (if _$e79907_
                    ((lambda (_path79910_)
                       (let ((_loaded-path79912_ (load _path79910_)))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            __modules
                            _modpath79902_
                            _loaded-path79912_))
                         _loaded-path79912_))
                     _$e79907_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath79902_))))))))
    (define reload-module!
      (lambda (_modpath79888_)
        (let ((_$e79890_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79888_))))
          (if _$e79890_
              ((lambda (_current-path79893_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-path79893_ 'builtin))
                     (let ((_latest-path79895_
                            (let ()
                              (declare (not safe))
                              (find-library-module _modpath79888_))))
                       (if (or (let ((__tmp79920
                                      (path-extension _current-path79893_)))
                                 (declare (not safe))
                                 (equal? __tmp79920 '".scm"))
                               (let ((__tmp79921
                                      (let ()
                                        (declare (not safe))
                                        (equal? _current-path79893_
                                                _latest-path79895_))))
                                 (declare (not safe))
                                 (not __tmp79921)))
                           (let ((_loaded-path79900_ (load _modpath79888_)))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                __modules
                                _modpath79888_
                                _loaded-path79900_))
                             _loaded-path79900_)
                           '#!void))
                     (let ()
                       (declare (not safe))
                       (error '"cannot reload builtin module"
                              _modpath79888_))))
               _$e79890_)
              (let () (declare (not safe)) (load-module _modpath79888_))))))
    (define find-library-module
      (lambda (_modpath79823_)
        (letrec ((_find-compiled-file79825_
                  (lambda (_npath79877_)
                    (let ((_basepath79879_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79877_ '".o"))))
                      (let _lp79881_ ((_current79883_ '#f) (_n79884_ '1))
                        (let ((_next79886_
                               (let ((__tmp79922 (number->string _n79884_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath79879_
                                  __tmp79922))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next79886_))
                              (let ((__tmp79923
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n79884_ '1))))
                                (declare (not safe))
                                (_lp79881_ _next79886_ __tmp79923))
                              _current79883_))))))
                 (_find-source-file79826_
                  (lambda (_npath79873_)
                    (let ((_spath79875_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79873_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath79875_))
                          _spath79875_
                          '#f)))))
          (let _lp79828_ ((_rest79830_
                           (let () (declare (not safe)) (load-path))))
            (let* ((_rest7983179839_ _rest79830_)
                   (_else7983379847_ (lambda () '#f))
                   (_K7983579861_
                    (lambda (_rest79850_ _dir79851_)
                      (let* ((_npath79853_
                              (path-expand
                               _modpath79823_
                               (path-expand _dir79851_)))
                             (_$e79855_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file79825_ _npath79853_))))
                        (if _$e79855_
                            (path-normalize _$e79855_)
                            (let ((_$e79858_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file79826_ _npath79853_))))
                              (if _$e79858_
                                  (path-normalize _$e79858_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp79828_ _rest79850_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7983179839_))
                  (let ((_hd7983679864_
                         (let ()
                           (declare (not safe))
                           (##car _rest7983179839_)))
                        (_tl7983779866_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7983179839_))))
                    (let* ((_dir79869_ _hd7983679864_)
                           (_rest79871_ _tl7983779866_))
                      (declare (not safe))
                      (_K7983579861_ _rest79871_ _dir79869_)))
                  (let () (declare (not safe)) (_else7983379847_))))))))))
