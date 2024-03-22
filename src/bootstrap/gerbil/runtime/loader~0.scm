(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1711108655)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _paths79958_
        (for-each
         (lambda (_p79960_)
           (set! __load-path
                 (let () (declare (not safe)) (cons _p79960_ __load-path))))
         (reverse! _paths79958_))))
    (define set-load-path!
      (lambda (_paths79956_) (set! __load-path _paths79956_)))
    (define load-module
      (lambda (_modpath79944_)
        (let ((_$e79946_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79944_))))
          (if _$e79946_
              _$e79946_
              (let ((_$e79949_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath79944_))))
                (if _$e79949_
                    ((lambda (_path79952_)
                       (let ((_loaded-path79954_ (load _path79952_)))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            __modules
                            _modpath79944_
                            _loaded-path79954_))
                         _loaded-path79954_))
                     _$e79949_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath79944_))))))))
    (define reload-module!
      (lambda (_modpath79930_)
        (let ((_$e79932_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79930_))))
          (if _$e79932_
              ((lambda (_current-path79935_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-path79935_ 'builtin))
                     (let ((_latest-path79937_
                            (let ()
                              (declare (not safe))
                              (find-library-module _modpath79930_))))
                       (if (or (let ((__tmp79962
                                      (path-extension _current-path79935_)))
                                 (declare (not safe))
                                 (equal? __tmp79962 '".scm"))
                               (let ((__tmp79963
                                      (let ()
                                        (declare (not safe))
                                        (equal? _current-path79935_
                                                _latest-path79937_))))
                                 (declare (not safe))
                                 (not __tmp79963)))
                           (let ((_loaded-path79942_ (load _modpath79930_)))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                __modules
                                _modpath79930_
                                _loaded-path79942_))
                             _loaded-path79942_)
                           '#!void))
                     (let ()
                       (declare (not safe))
                       (error '"cannot reload builtin module"
                              _modpath79930_))))
               _$e79932_)
              (let () (declare (not safe)) (load-module _modpath79930_))))))
    (define find-library-module
      (lambda (_modpath79865_)
        (letrec ((_find-compiled-file79867_
                  (lambda (_npath79919_)
                    (let ((_basepath79921_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79919_ '".o"))))
                      (let _lp79923_ ((_current79925_ '#f) (_n79926_ '1))
                        (let ((_next79928_
                               (let ((__tmp79964 (number->string _n79926_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath79921_
                                  __tmp79964))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next79928_))
                              (let ((__tmp79965
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n79926_ '1))))
                                (declare (not safe))
                                (_lp79923_ _next79928_ __tmp79965))
                              _current79925_))))))
                 (_find-source-file79868_
                  (lambda (_npath79915_)
                    (let ((_spath79917_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79915_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath79917_))
                          _spath79917_
                          '#f)))))
          (let _lp79870_ ((_rest79872_
                           (let () (declare (not safe)) (load-path))))
            (let* ((_rest7987379881_ _rest79872_)
                   (_else7987579889_ (lambda () '#f))
                   (_K7987779903_
                    (lambda (_rest79892_ _dir79893_)
                      (let* ((_npath79895_
                              (path-expand
                               _modpath79865_
                               (path-expand _dir79893_)))
                             (_$e79897_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file79867_ _npath79895_))))
                        (if _$e79897_
                            (path-normalize _$e79897_)
                            (let ((_$e79900_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file79868_ _npath79895_))))
                              (if _$e79900_
                                  (path-normalize _$e79900_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp79870_ _rest79892_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7987379881_))
                  (let ((_hd7987879906_
                         (let ()
                           (declare (not safe))
                           (##car _rest7987379881_)))
                        (_tl7987979908_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7987379881_))))
                    (let* ((_dir79911_ _hd7987879906_)
                           (_rest79913_ _tl7987979908_))
                      (declare (not safe))
                      (_K7987779903_ _rest79913_ _dir79911_)))
                  (let () (declare (not safe)) (_else7987579889_))))))))))
