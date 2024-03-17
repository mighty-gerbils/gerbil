(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1710694203)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _paths76952_
        (for-each
         (lambda (_p76954_)
           (set! __load-path
                 (let () (declare (not safe)) (cons _p76954_ __load-path))))
         (reverse! _paths76952_))))
    (define set-load-path!
      (lambda (_paths76950_) (set! __load-path _paths76950_)))
    (define load-module
      (lambda (_modpath76935_)
        (let ((_$e76940_
               (let ((_$e76937_
                      (let ()
                        (declare (not safe))
                        (hash-get __modules _modpath76935_))))
                 (if _$e76937_
                     _$e76937_
                     (let ((__tmp76956 (string-append _modpath76935_ '"__rt")))
                       (declare (not safe))
                       (hash-get __modules __tmp76956))))))
          (if _$e76940_
              _$e76940_
              (let ((_$e76943_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath76935_))))
                (if _$e76943_
                    ((lambda (_path76946_)
                       (let ((_loaded-path76948_ (load _path76946_)))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            __modules
                            _modpath76935_
                            _loaded-path76948_))
                         _loaded-path76948_))
                     _$e76943_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath76935_))))))))
    (define reload-module!
      (lambda (_modpath76918_)
        (let ((_$e76923_
               (let ((_$e76920_
                      (let ()
                        (declare (not safe))
                        (hash-get __modules _modpath76918_))))
                 (if _$e76920_
                     _$e76920_
                     (let ((__tmp76957 (string-append _modpath76918_ '"__rt")))
                       (declare (not safe))
                       (hash-get __modules __tmp76957))))))
          (if _$e76923_
              ((lambda (_current-path76926_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-path76926_ 'builtin))
                     (let ((_latest-path76928_
                            (let ()
                              (declare (not safe))
                              (find-library-module _modpath76918_))))
                       (if (or (let ((__tmp76958
                                      (path-extension _current-path76926_)))
                                 (declare (not safe))
                                 (equal? __tmp76958 '".scm"))
                               (let ((__tmp76959
                                      (let ()
                                        (declare (not safe))
                                        (equal? _current-path76926_
                                                _latest-path76928_))))
                                 (declare (not safe))
                                 (not __tmp76959)))
                           (let ((_loaded-path76933_ (load _modpath76918_)))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                __modules
                                _modpath76918_
                                _loaded-path76933_))
                             _loaded-path76933_)
                           '#!void))
                     (let ()
                       (declare (not safe))
                       (error '"cannot reload builtin module"
                              _modpath76918_))))
               _$e76923_)
              (let () (declare (not safe)) (load-module _modpath76918_))))))
    (define find-library-module
      (lambda (_modpath76853_)
        (letrec ((_find-compiled-file76855_
                  (lambda (_npath76907_)
                    (let ((_basepath76909_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath76907_ '".o"))))
                      (let _lp76911_ ((_current76913_ '#f) (_n76914_ '1))
                        (let ((_next76916_
                               (let ((__tmp76960 (number->string _n76914_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath76909_
                                  __tmp76960))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next76916_))
                              (let ((__tmp76961
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n76914_ '1))))
                                (declare (not safe))
                                (_lp76911_ _next76916_ __tmp76961))
                              _current76913_))))))
                 (_find-source-file76856_
                  (lambda (_npath76903_)
                    (let ((_spath76905_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath76903_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath76905_))
                          _spath76905_
                          '#f)))))
          (let _lp76858_ ((_rest76860_
                           (let () (declare (not safe)) (load-path))))
            (let* ((_rest7686176869_ _rest76860_)
                   (_else7686376877_ (lambda () '#f))
                   (_K7686576891_
                    (lambda (_rest76880_ _dir76881_)
                      (let* ((_npath76883_
                              (path-expand
                               _modpath76853_
                               (path-expand _dir76881_)))
                             (_$e76885_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file76855_ _npath76883_))))
                        (if _$e76885_
                            (path-normalize _$e76885_)
                            (let ((_$e76888_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file76856_ _npath76883_))))
                              (if _$e76888_
                                  (path-normalize _$e76888_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp76858_ _rest76880_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7686176869_))
                  (let ((_hd7686676894_
                         (let ()
                           (declare (not safe))
                           (##car _rest7686176869_)))
                        (_tl7686776896_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7686176869_))))
                    (let* ((_dir76899_ _hd7686676894_)
                           (_rest76901_ _tl7686776896_))
                      (declare (not safe))
                      (_K7686576891_ _rest76901_ _dir76899_)))
                  (let () (declare (not safe)) (_else7686376877_))))))))))
