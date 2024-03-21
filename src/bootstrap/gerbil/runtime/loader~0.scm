(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1710954836)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _paths79949_
        (for-each
         (lambda (_p79951_)
           (set! __load-path
                 (let () (declare (not safe)) (cons _p79951_ __load-path))))
         (reverse! _paths79949_))))
    (define set-load-path!
      (lambda (_paths79947_) (set! __load-path _paths79947_)))
    (define load-module
      (lambda (_modpath79935_)
        (let ((_$e79937_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79935_))))
          (if _$e79937_
              _$e79937_
              (let ((_$e79940_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath79935_))))
                (if _$e79940_
                    ((lambda (_path79943_)
                       (let ((_loaded-path79945_ (load _path79943_)))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            __modules
                            _modpath79935_
                            _loaded-path79945_))
                         _loaded-path79945_))
                     _$e79940_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath79935_))))))))
    (define reload-module!
      (lambda (_modpath79921_)
        (let ((_$e79923_
               (let ()
                 (declare (not safe))
                 (hash-get __modules _modpath79921_))))
          (if _$e79923_
              ((lambda (_current-path79926_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-path79926_ 'builtin))
                     (let ((_latest-path79928_
                            (let ()
                              (declare (not safe))
                              (find-library-module _modpath79921_))))
                       (if (or (let ((__tmp79953
                                      (path-extension _current-path79926_)))
                                 (declare (not safe))
                                 (equal? __tmp79953 '".scm"))
                               (let ((__tmp79954
                                      (let ()
                                        (declare (not safe))
                                        (equal? _current-path79926_
                                                _latest-path79928_))))
                                 (declare (not safe))
                                 (not __tmp79954)))
                           (let ((_loaded-path79933_ (load _modpath79921_)))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                __modules
                                _modpath79921_
                                _loaded-path79933_))
                             _loaded-path79933_)
                           '#!void))
                     (let ()
                       (declare (not safe))
                       (error '"cannot reload builtin module"
                              _modpath79921_))))
               _$e79923_)
              (let () (declare (not safe)) (load-module _modpath79921_))))))
    (define find-library-module
      (lambda (_modpath79856_)
        (letrec ((_find-compiled-file79858_
                  (lambda (_npath79910_)
                    (let ((_basepath79912_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79910_ '".o"))))
                      (let _lp79914_ ((_current79916_ '#f) (_n79917_ '1))
                        (let ((_next79919_
                               (let ((__tmp79955 (number->string _n79917_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath79912_
                                  __tmp79955))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next79919_))
                              (let ((__tmp79956
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n79917_ '1))))
                                (declare (not safe))
                                (_lp79914_ _next79919_ __tmp79956))
                              _current79916_))))))
                 (_find-source-file79859_
                  (lambda (_npath79906_)
                    (let ((_spath79908_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath79906_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath79908_))
                          _spath79908_
                          '#f)))))
          (let _lp79861_ ((_rest79863_
                           (let () (declare (not safe)) (load-path))))
            (let* ((_rest7986479872_ _rest79863_)
                   (_else7986679880_ (lambda () '#f))
                   (_K7986879894_
                    (lambda (_rest79883_ _dir79884_)
                      (let* ((_npath79886_
                              (path-expand
                               _modpath79856_
                               (path-expand _dir79884_)))
                             (_$e79888_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file79858_ _npath79886_))))
                        (if _$e79888_
                            (path-normalize _$e79888_)
                            (let ((_$e79891_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file79859_ _npath79886_))))
                              (if _$e79891_
                                  (path-normalize _$e79891_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp79861_ _rest79883_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7986479872_))
                  (let ((_hd7986979897_
                         (let ()
                           (declare (not safe))
                           (##car _rest7986479872_)))
                        (_tl7987079899_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7986479872_))))
                    (let* ((_dir79902_ _hd7986979897_)
                           (_rest79904_ _tl7987079899_))
                      (declare (not safe))
                      (_K7986879894_ _rest79904_ _dir79902_)))
                  (let () (declare (not safe)) (_else7986679880_))))))))))
