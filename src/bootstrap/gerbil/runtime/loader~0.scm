(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1710833424)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _paths79967_
        (for-each
         (lambda (_p79969_)
           (set! __load-path
                 (let () (declare (not safe)) (cons _p79969_ __load-path))))
         (reverse! _paths79967_))))
    (define set-load-path!
      (lambda (_paths79965_) (set! __load-path _paths79965_)))
    (define load-module
      (lambda (_modpath79953_)
        (let ((_$e79955_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79953_))))
          (if _$e79955_
              _$e79955_
              (let ((_$e79958_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath79953_))))
                (if _$e79958_
                    ((lambda (_path79961_)
                       (let ((_loaded-path79963_ (load _path79961_)))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            __modules
                            _modpath79953_
                            _loaded-path79963_))
                         _loaded-path79963_))
                     _$e79958_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath79953_))))))))
    (define reload-module!
      (lambda (_modpath79939_)
        (let ((_$e79941_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79939_))))
          (if _$e79941_
              ((lambda (_current-path79944_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-path79944_ 'builtin))
                     (let ((_latest-path79946_
                            (let ()
                              (declare (not safe))
                              (find-library-module _modpath79939_))))
                       (if (or (let ((__tmp79971
                                      (path-extension _current-path79944_)))
                                 (declare (not safe))
                                 (equal? __tmp79971 '".scm"))
                               (let ((__tmp79972
                                      (let ()
                                        (declare (not safe))
                                        (equal? _current-path79944_
                                                _latest-path79946_))))
                                 (declare (not safe))
                                 (not __tmp79972)))
                           (let ((_loaded-path79951_ (load _modpath79939_)))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                __modules
                                _modpath79939_
                                _loaded-path79951_))
                             _loaded-path79951_)
                           '#!void))
                     (let ()
                       (declare (not safe))
                       (error '"cannot reload builtin module"
                              _modpath79939_))))
               _$e79941_)
              (let () (declare (not safe)) (load-module _modpath79939_))))))
    (define find-library-module
      (lambda (_modpath79874_)
        (letrec ((_find-compiled-file79876_
                  (lambda (_npath79928_)
                    (let ((_basepath79930_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79928_ '".o"))))
                      (let _lp79932_ ((_current79934_ '#f) (_n79935_ '1))
                        (let ((_next79937_
                               (let ((__tmp79973 (number->string _n79935_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath79930_
                                  __tmp79973))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next79937_))
                              (let ((__tmp79974
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n79935_ '1))))
                                (declare (not safe))
                                (_lp79932_ _next79937_ __tmp79974))
                              _current79934_))))))
                 (_find-source-file79877_
                  (lambda (_npath79924_)
                    (let ((_spath79926_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79924_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath79926_))
                          _spath79926_
                          '#f)))))
          (let _lp79879_ ((_rest79881_
                           (let () (declare (not safe)) (load-path))))
            (let* ((_rest7988279890_ _rest79881_)
                   (_else7988479898_ (lambda () '#f))
                   (_K7988679912_
                    (lambda (_rest79901_ _dir79902_)
                      (let* ((_npath79904_
                              (path-expand
                               _modpath79874_
                               (path-expand _dir79902_)))
                             (_$e79906_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file79876_ _npath79904_))))
                        (if _$e79906_
                            (path-normalize _$e79906_)
                            (let ((_$e79909_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file79877_ _npath79904_))))
                              (if _$e79909_
                                  (path-normalize _$e79909_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp79879_ _rest79901_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7988279890_))
                  (let ((_hd7988779915_
                         (let ()
                           (declare (not safe))
                           (##car _rest7988279890_)))
                        (_tl7988879917_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7988279890_))))
                    (let* ((_dir79920_ _hd7988779915_)
                           (_rest79922_ _tl7988879917_))
                      (declare (not safe))
                      (_K7988679912_ _rest79922_ _dir79920_)))
                  (let () (declare (not safe)) (_else7988479898_))))))))))
