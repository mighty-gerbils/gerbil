(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1704735467)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath8898_ _reload?8899_)
        (let ((_$e8901_
               (if (let () (declare (not safe)) (not _reload?8899_))
                   (let ((__tmp8920 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp8920 _modpath8898_ '#f))
                   '#f)))
          (if _$e8901_
              _$e8901_
              (let ((_$e8904_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath8898_))))
                (if _$e8904_
                    ((lambda (_path8907_)
                       (let ((_lpath8909_ (load _path8907_)))
                         (let ((__tmp8921 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp8921 _modpath8898_ _lpath8909_))
                         _lpath8909_))
                     _$e8904_)
                    (error '"module not found" _modpath8898_)))))))
    (define load-module__0
      (lambda (_modpath8914_)
        (let ((_reload?8916_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath8914_ _reload?8916_))))
    (define load-module
      (lambda _g8923_
        (let ((_g8922_ (let () (declare (not safe)) (##length _g8923_))))
          (cond ((let () (declare (not safe)) (##fx= _g8922_ 1))
                 (apply (lambda (_modpath8914_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath8914_)))
                        _g8923_))
                ((let () (declare (not safe)) (##fx= _g8922_ 2))
                 (apply (lambda (_modpath8918_ _reload?8919_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath8918_ _reload?8919_)))
                        _g8923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g8923_))))))
    (define find-library-module
      (lambda (_modpath8832_)
        (letrec ((_find-compiled-file8834_
                  (lambda (_npath8886_)
                    (let ((_basepath8888_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath8886_ '".o"))))
                      (let _lp8890_ ((_current8892_ '#f) (_n8893_ '1))
                        (let ((_next8895_
                               (let ((__tmp8924 (number->string _n8893_)))
                                 (declare (not safe))
                                 (##string-append _basepath8888_ __tmp8924))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next8895_))
                              (let ((__tmp8925
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n8893_ '1))))
                                (declare (not safe))
                                (_lp8890_ _next8895_ __tmp8925))
                              _current8892_))))))
                 (_find-source-file8835_
                  (lambda (_npath8882_)
                    (let ((_spath8884_ (string-append _npath8882_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath8884_))
                          _spath8884_
                          '#f)))))
          (let _lp8837_ ((_rest8839_ (current-module-library-path)))
            (let* ((_rest88408848_ _rest8839_)
                   (_else88428856_ (lambda () '#f))
                   (_K88448870_
                    (lambda (_rest8859_ _dir8860_)
                      (let* ((_npath8862_
                              (path-expand
                               _modpath8832_
                               (path-expand _dir8860_)))
                             (_$e8864_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file8834_ _npath8862_))))
                        (if _$e8864_
                            (path-normalize _$e8864_)
                            (let ((_$e8867_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file8835_ _npath8862_))))
                              (if _$e8867_
                                  (path-normalize _$e8867_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp8837_ _rest8859_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest88408848_))
                  (let ((_hd88458873_
                         (let () (declare (not safe)) (##car _rest88408848_)))
                        (_tl88468875_
                         (let () (declare (not safe)) (##cdr _rest88408848_))))
                    (let* ((_dir8878_ _hd88458873_) (_rest8880_ _tl88468875_))
                      (declare (not safe))
                      (_K88448870_ _rest8880_ _dir8878_)))
                  (let () (declare (not safe)) (_else88428856_))))))))))
