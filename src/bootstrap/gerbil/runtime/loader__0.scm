(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708289480)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath131609_ _reload?131610_)
        (let ((_$e131612_
               (if (let () (declare (not safe)) (not _reload?131610_))
                   (let ((__tmp135698 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp135698 _modpath131609_))
                   '#f)))
          (if _$e131612_
              _$e131612_
              (let ((_$e131615_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath131609_))))
                (if _$e131615_
                    ((lambda (_path131618_)
                       (let ((_lpath131620_ (load _path131618_)))
                         (let ((__tmp135699 (current-module-registry)))
                           (declare (not safe))
                           (hash-put!
                            __tmp135699
                            _modpath131609_
                            _lpath131620_))
                         _lpath131620_))
                     _$e131615_)
                    (error '"module not found" _modpath131609_)))))))
    (define load-module__0
      (lambda (_modpath131625_)
        (let ((_reload?131627_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath131625_ _reload?131627_))))
    (define load-module
      (lambda _g135701_
        (let ((_g135700_ (let () (declare (not safe)) (##length _g135701_))))
          (cond ((let () (declare (not safe)) (##fx= _g135700_ 1))
                 (apply (lambda (_modpath131625_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath131625_)))
                        _g135701_))
                ((let () (declare (not safe)) (##fx= _g135700_ 2))
                 (apply (lambda (_modpath131629_ _reload?131630_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath131629_ _reload?131630_)))
                        _g135701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g135701_))))))
    (define find-library-module
      (lambda (_modpath131543_)
        (letrec ((_find-compiled-file131545_
                  (lambda (_npath131597_)
                    (let ((_basepath131599_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath131597_ '".o"))))
                      (let _lp131601_ ((_current131603_ '#f) (_n131604_ '1))
                        (let ((_next131606_
                               (let ((__tmp135702 (number->string _n131604_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath131599_
                                  __tmp135702))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next131606_))
                              (let ((__tmp135703
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n131604_ '1))))
                                (declare (not safe))
                                (_lp131601_ _next131606_ __tmp135703))
                              _current131603_))))))
                 (_find-source-file131546_
                  (lambda (_npath131593_)
                    (let ((_spath131595_
                           (string-append _npath131593_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath131595_))
                          _spath131595_
                          '#f)))))
          (let _lp131548_ ((_rest131550_ (current-module-library-path)))
            (let* ((_rest131551131559_ _rest131550_)
                   (_else131553131567_ (lambda () '#f))
                   (_K131555131581_
                    (lambda (_rest131570_ _dir131571_)
                      (let* ((_npath131573_
                              (path-expand
                               _modpath131543_
                               (path-expand _dir131571_)))
                             (_$e131575_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file131545_ _npath131573_))))
                        (if _$e131575_
                            (path-normalize _$e131575_)
                            (let ((_$e131578_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file131546_
                                      _npath131573_))))
                              (if _$e131578_
                                  (path-normalize _$e131578_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp131548_ _rest131570_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest131551131559_))
                  (let ((_hd131556131584_
                         (let ()
                           (declare (not safe))
                           (##car _rest131551131559_)))
                        (_tl131557131586_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest131551131559_))))
                    (let* ((_dir131589_ _hd131556131584_)
                           (_rest131591_ _tl131557131586_))
                      (declare (not safe))
                      (_K131555131581_ _rest131591_ _dir131589_)))
                  (let () (declare (not safe)) (_else131553131567_))))))))))
