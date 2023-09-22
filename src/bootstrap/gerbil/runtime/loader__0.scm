(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1695377590)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath8892_ _reload?8893_)
        (let ((_$e8895_
               (if (let () (declare (not safe)) (not _reload?8893_))
                   (let ((__tmp8914 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp8914 _modpath8892_ '#f))
                   '#f)))
          (if _$e8895_
              _$e8895_
              (let ((_$e8898_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath8892_))))
                (if _$e8898_
                    ((lambda (_path8901_)
                       (let ((_lpath8903_ (load _path8901_)))
                         (let ((__tmp8915 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp8915 _modpath8892_ _lpath8903_))
                         _lpath8903_))
                     _$e8898_)
                    (error '"module not found" _modpath8892_)))))))
    (define load-module__0
      (lambda (_modpath8908_)
        (let ((_reload?8910_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath8908_ _reload?8910_))))
    (define load-module
      (lambda _g8917_
        (let ((_g8916_ (let () (declare (not safe)) (##length _g8917_))))
          (cond ((let () (declare (not safe)) (##fx= _g8916_ 1))
                 (apply (lambda (_modpath8908_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath8908_)))
                        _g8917_))
                ((let () (declare (not safe)) (##fx= _g8916_ 2))
                 (apply (lambda (_modpath8912_ _reload?8913_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath8912_ _reload?8913_)))
                        _g8917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g8917_))))))
    (define find-library-module
      (lambda (_modpath8826_)
        (letrec ((_find-compiled-file8828_
                  (lambda (_npath8880_)
                    (let ((_basepath8882_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath8880_ '".o"))))
                      (let _lp8884_ ((_current8886_ '#f) (_n8887_ '1))
                        (let ((_next8889_
                               (let ((__tmp8918 (number->string _n8887_)))
                                 (declare (not safe))
                                 (##string-append _basepath8882_ __tmp8918))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next8889_))
                              (let ((__tmp8919
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n8887_ '1))))
                                (declare (not safe))
                                (_lp8884_ _next8889_ __tmp8919))
                              _current8886_))))))
                 (_find-source-file8829_
                  (lambda (_npath8876_)
                    (let ((_spath8878_ (string-append _npath8876_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath8878_))
                          _spath8878_
                          '#f)))))
          (let _lp8831_ ((_rest8833_ (current-module-library-path)))
            (let* ((_rest88348842_ _rest8833_)
                   (_else88368850_ (lambda () '#f))
                   (_K88388864_
                    (lambda (_rest8853_ _dir8854_)
                      (let* ((_npath8856_
                              (path-expand
                               _modpath8826_
                               (path-expand _dir8854_)))
                             (_$e8858_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file8828_ _npath8856_))))
                        (if _$e8858_
                            (path-normalize _$e8858_)
                            (let ((_$e8861_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file8829_ _npath8856_))))
                              (if _$e8861_
                                  (path-normalize _$e8861_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp8831_ _rest8853_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest88348842_))
                  (let ((_hd88398867_
                         (let () (declare (not safe)) (##car _rest88348842_)))
                        (_tl88408869_
                         (let () (declare (not safe)) (##cdr _rest88348842_))))
                    (let* ((_dir8872_ _hd88398867_) (_rest8874_ _tl88408869_))
                      (declare (not safe))
                      (_K88388864_ _rest8874_ _dir8872_)))
                  (let () (declare (not safe)) (_else88368850_))))))))))
